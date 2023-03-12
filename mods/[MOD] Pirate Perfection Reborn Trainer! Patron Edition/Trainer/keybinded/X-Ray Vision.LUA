-- xray V3 
if inGame() and isPlaying() and not inChat() and not InOverlay() then 
	local ColorList =	{	default			= '336699',	--	LIGHT BLUE 
							friendly		= 'A3FFA3', --	LIGHT GREEN 
							camera			= 'CC0000', --	DARK RED 
							hostage			= '009933', --	DARK GREEN 
							pickup			= '003399', --	DARK BLUE
							civilian		= 'FFFFFF', --	WHITE
							civilian_female	= 'E0A3C2', --	LIGHT PINK
							spooc			= '0000FF', --	NAVY BLUE
							taser			= 'FF66FF', --	PINK
							shield			= 'CC0000', --	RED
							tank			= 'FFFF00', --	YELLOW
							sniper			= 'FF9933', --	GOLD
							gangster		= '660066'	--	PURPLE
						}
	function getUnitColor(unit)
		local unitType = unit:base()._tweak_table
		if unit:base().security_camera then
			unitType = 'camera'
		end
		if unit:base().is_converted then
			unitType = 'friendly'
		end
		if unit:base().is_hostage then
			unitType = 'hostage'
		end
		if unit:base().has_pickup then
			unitType = 'pickup'
		end
		if not unitType then
			return nil
		end
		return Color(ColorList[unitType] and ColorList[unitType] or ColorList['default'])
	end
	function markEnemies()
		if not toggleMark or not inGame() then
			return
		end
		local multi = managers.player:upgrade_value("player", "mark_enemy_time_multiplier", 1)
		if isHost() then
			for u_key, u_data in pairs( managers.groupai:state()._security_cameras ) do
				if u_data.contour then
					u_data:contour():add( "mark_unit", syncMark, multi )
				end
			end
			else
			for _, unit in ipairs( SecurityCamera.cameras ) do
				if unit and unit:contour() and unit:enabled() and unit:base() and not unit:base():destroyed() then
					unit:contour():add("mark_unit", syncMark, multi )
				end
			end
		end
		for u_key,u_data in pairs(managers.enemy:all_civilians()) do
			if u_data.unit.contour and alive(u_data.unit) then
				if isHostage(u_data.unit) then
					u_data.unit:contour():setData({is_hostage = true})
				end
				if isHost() and u_data.unit:character_damage():pickup() then
					u_data.unit:contour():setData({has_pickup = true})
				end
			u_data.unit:contour():add("mark_enemy", syncMark, multi)
			end
		end
		for u_key,u_data in pairs(managers.enemy:all_enemies()) do
			if u_data.unit.contour and alive(u_data.unit) then
				if u_data.is_converted then
					u_data.unit:contour():setData({is_converted = true})
					--u_data.unit:contour():add("friendly", syncMark, multi)
					else
					if isHostage(u_data.unit) then
						u_data.unit:contour():setData({is_hostage = true})
					end
					if isHost() and u_data.unit:character_damage():pickup() and u_data.unit:character_damage():pickup() ~= "ammo" then
						u_data.unit:contour():setData({has_pickup = true})
					end
					u_data.unit:contour():add("mark_enemy", syncMark, multi)
				end
			end
		end
	end
	function markClear()
		if not inGame() then
			return
		end
		if isHost() then
			for u_key, u_data in pairs(managers.groupai:state()._security_cameras) do
				if u_data.contour then
					u_data:contour():removeAll()
				end
			end
			else
			for _, unit in ipairs( SecurityCamera.cameras ) do
				unit:contour():removeAll()
			end
		end
		for u_key,u_data in pairs(managers.enemy:all_civilians()) do
			if u_data.unit.contour then
				u_data.unit:contour():removeAll()
			end
		end
		for u_key,u_data in pairs(managers.enemy:all_enemies()) do
			if u_data.unit.contour then
				u_data.unit:contour():removeAll()
			end
		end
	end
	if ContourExt then
		if not _nhUpdateColor then
			_nhUpdateColor = ContourExt._upd_color
		end
		function ContourExt:_upd_color()
			if toggleMark then
				local color = getUnitColor(self._unit)
				if color then
					self._materials = self._materials or self._unit:get_objects_by_type(Idstring("material"))
					for _, material in ipairs(self._materials) do
						material:set_variable(Idstring( "contour_color" ), color)
					end
					return
				end
			end
			_nhUpdateColor(self)
		end
		function ContourExt:removeAll(sync)
			if not self._contour_list or not type(self._contour_list) == 'table' then
				return
			end
			for id, setup in ipairs(self._contour_list) do
				self:remove(setup.type, sync)
			end
		end
		function ContourExt:setData(data)
				if not data or not type(data) == 'table' then
				return
			end
			for k, v in pairs(data) do
				self._unit:base()[k] = v
			end
		end
	end
	if CopDamage then
		if not _copDamageDie then
			_copDamageDie = CopDamage.die
		end
		function CopDamage:die( variant )
			if toggleMark and self._unit:contour() then
				self._unit:contour():removeAll()
			end
			_copDamageDie(self, variant)
		end
	end
	if HuskCopDamage then
		if not _huskDamageDie then
			_huskDamageDie = HuskCopDamage.die
		end
		function HuskCopDamage:die( variant )
			if toggleMark and self._unit:contour() then
				self._unit:contour():removeAll()
			end
			_huskDamageDie(self, variant)
		end
	end
	if ElementSecurityCamera then
		if not _cameraDestroyed then
			_cameraDestroyed = ElementSecurityCamera.on_destroyed
		end
		function ElementSecurityCamera:on_destroyed()
			if toggleMark then
				local camera_unit = self:_fetch_unit_by_unit_id( self._values.camera_u_id )
					if camera_unit:contour() then
						camera_unit:contour():removeAll()
					end
			end
			_cameraDestroyed(self)
		end
	end
	if GameSetup then
		if not _gameUpdate then
			_gameUpdate = GameSetup.update
		end
		local _gameUpdateLastMark
		function GameSetup:update(t, dt)
			_gameUpdate(self, t, dt)
			if not _gameUpdateLastMark or t - _gameUpdateLastMark > 4 then
				_gameUpdateLastMark = t
				markEnemies()
			end
		end
	end
	function markToggle(toggleSync)
		if not inGame() then
			return
		end
		if toggleSync then
			syncMark = not syncMark
			show_mid_text("Set to: "..tostring(syncMark),"Sync Marked Enemies",0.50)
			else
			toggleMark = not toggleMark
			if not toggleMark then
				markClear()
				else 
			end
			show_mid_text("Set to: "..tostring(toggleMark),"Marking Enemies",0.50)
		end
		markEnemies()
	end
	if not toggleMark then
		toggleMark = false
	end
	if not syncMark then
		syncMark = false
	end
	markToggle()
end
-- SHOW FRAMING FRAME DAY 3 ITEMS
_toggleItemFinder = not _toggleItemFinder
if _toggleItemFinder then
	for k,v in pairs(managers.mission._scripts.default._elements) do
		if v._values and v._values.trigger_list and v._values.trigger_list[1] and (v._values.trigger_list[1].notify_unit_sequence == "state_outline_enabled" or
			v._values.trigger_list[1].notify_unit_sequence == "enable_outline") then
			v:on_executed()
		end
	end
	else
	for k,v in pairs(managers.mission._scripts.default._elements) do
		if v._values and v._values.trigger_list and v._values.trigger_list[1] and (v._values.trigger_list[1].notify_unit_sequence == "state_outline_disabled" or
			v._values.trigger_list[1].notify_unit_sequence == "disable_outline") then
			v:on_executed()
		end
	end
end