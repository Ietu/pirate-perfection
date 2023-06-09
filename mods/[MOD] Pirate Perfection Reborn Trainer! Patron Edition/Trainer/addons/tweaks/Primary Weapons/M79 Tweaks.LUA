-- M79 TWEAKS
	local total_damage_primary = 10000
--	tweak_data.weapon.gre_m79 = {}
--	tweak_data.weapon.gre_m79.category = "grenade_launcher"
--	tweak_data.weapon.gre_m79.upgrade_blocks = {weapon={"clip_ammo_increase"}}
--	tweak_data.weapon.gre_m79.damage_melee = damage_melee_default
--	tweak_data.weapon.gre_m79.damage_melee_effect_mul = damage_melee_effect_multiplier_default
--	tweak_data.weapon.gre_m79.sounds = {}
--	tweak_data.weapon.gre_m79.sounds.fire = "gl40_fire"
--	tweak_data.weapon.gre_m79.sounds.dryfire = "shotgun_dryfire"
--	tweak_data.weapon.gre_m79.sounds.enter_steelsight = "secondary_steel_sight_enter"
--	tweak_data.weapon.gre_m79.sounds.leave_steelsight = "secondary_steel_sight_exit"
--	tweak_data.weapon.gre_m79.timers = {}
	tweak_data.weapon.gre_m79.timers.reload_not_empty = 3.1
	tweak_data.weapon.gre_m79.timers.reload_empty = tweak_data.weapon.gre_m79.timers.reload_not_empty
	tweak_data.weapon.gre_m79.timers.unequip = 0.6
	tweak_data.weapon.gre_m79.timers.equip = 0.6
--	tweak_data.weapon.gre_m79.name_id = "Baddog-11's Launcher"
--	tweak_data.weapon.gre_m79.desc_id = "bm_w_gre_m79_desc"
--	tweak_data.weapon.gre_m79.description_id = "des_gre_m79"
--	tweak_data.weapon.gre_m79.muzzleflash = "effects/payday2/particles/weapons/762_auto_fps"
--	tweak_data.weapon.gre_m79.shell_ejection = "effects/payday2/particles/weapons/shells/shell_empty"
--	tweak_data.weapon.gre_m79.use_data = {}
--	tweak_data.weapon.gre_m79.use_data.selection_index = 2
--	tweak_data.weapon.gre_m79.use_data.align_place = "right_hand"
	tweak_data.weapon.gre_m79.DAMAGE = 10000
	tweak_data.weapon.gre_m79.damage_near = 10000
	tweak_data.weapon.gre_m79.damage_far = 10000
	tweak_data.weapon.gre_m79.rays = 50
	tweak_data.weapon.gre_m79.CLIP_AMMO_MAX = 100
	tweak_data.weapon.gre_m79.NR_CLIPS_MAX = math.round(total_damage_primary / 1 / tweak_data.weapon.gre_m79.CLIP_AMMO_MAX)
	tweak_data.weapon.gre_m79.AMMO_MAX = tweak_data.weapon.gre_m79.CLIP_AMMO_MAX * tweak_data.weapon.gre_m79.NR_CLIPS_MAX
	tweak_data.weapon.gre_m79.AMMO_PICKUP = {1.05, 1.65}
--	tweak_data.weapon.gre_m79.FIRE_MODE = "auto"
--	tweak_data.weapon.gre_m79.fire_mode_data = {}
--	tweak_data.weapon.gre_m79.fire_mode_data.fire_rate = 10
--	tweak_data.weapon.gre_m79.single = {}
--	tweak_data.weapon.gre_m79.single.fire_rate = 10
--	tweak_data.weapon.gre_m79.auto = {}
--	tweak_data.weapon.gre_m79.auto.fire_rate = 10	
--	tweak_data.weapon.gre_m79.spread = {}
--	tweak_data.weapon.gre_m79.spread.standing = tweak_data.weapon.r870.spread.standing
--	tweak_data.weapon.gre_m79.spread.crouching = tweak_data.weapon.r870.spread.crouching
--	tweak_data.weapon.gre_m79.spread.steelsight = tweak_data.weapon.r870.spread.steelsight
--	tweak_data.weapon.gre_m79.spread.moving_standing = tweak_data.weapon.r870.spread.moving_standing
--	tweak_data.weapon.gre_m79.spread.moving_crouching = tweak_data.weapon.r870.spread.moving_crouching
--	tweak_data.weapon.gre_m79.spread.moving_steelsight = tweak_data.weapon.r870.spread.moving_steelsight
--	tweak_data.weapon.gre_m79.kick = {}
	tweak_data.weapon.gre_m79.kick.standing = {
		0.01,
		0.01,
		0.01,
		0.01
	}
--	tweak_data.weapon.gre_m79.kick.crouching = tweak_data.weapon.gre_m79.kick.standing
--	tweak_data.weapon.gre_m79.kick.steelsight = tweak_data.weapon.gre_m79.kick.standing
--	tweak_data.weapon.gre_m79.crosshair = {}
--	tweak_data.weapon.gre_m79.crosshair.standing = {}
--	tweak_data.weapon.gre_m79.crosshair.crouching = {}
--	tweak_data.weapon.gre_m79.crosshair.steelsight = {}
	tweak_data.weapon.gre_m79.crosshair.standing.offset = 0.16
	tweak_data.weapon.gre_m79.crosshair.standing.moving_offset = 0.8
	tweak_data.weapon.gre_m79.crosshair.standing.kick_offset = 0.6
--	tweak_data.weapon.gre_m79.crosshair.standing.hidden = true
	tweak_data.weapon.gre_m79.crosshair.crouching.offset = 0.08
	tweak_data.weapon.gre_m79.crosshair.crouching.moving_offset = 0.7
	tweak_data.weapon.gre_m79.crosshair.crouching.kick_offset = 0.4
--	tweak_data.weapon.gre_m79.crosshair.crouching.hidden = true
--	tweak_data.weapon.gre_m79.crosshair.steelsight.hidden = true
	tweak_data.weapon.gre_m79.crosshair.steelsight.offset = 0
	tweak_data.weapon.gre_m79.crosshair.steelsight.moving_offset = 0
	tweak_data.weapon.gre_m79.crosshair.steelsight.kick_offset = 0.1
--	tweak_data.weapon.gre_m79.shake = {}
	tweak_data.weapon.gre_m79.shake.fire_multiplier = 0.01
	tweak_data.weapon.gre_m79.shake.fire_steelsight_multiplier = 0.01
--	tweak_data.weapon.gre_m79.autohit = autohit_shotgun_default
--	tweak_data.weapon.gre_m79.aim_assist = aim_assist_shotgun_default
--	tweak_data.weapon.gre_m79.animations = {}
--	tweak_data.weapon.gre_m79.animations.equip_id = "equip_gre_m79"
--	tweak_data.weapon.gre_m79.animations.recoil_steelsight = true
--	tweak_data.weapon.gre_m79.global_value = "gage_pack_assault"
--	tweak_data.weapon.gre_m79.texture_bundle_folder = "gage_pack_assault"
	tweak_data.weapon.gre_m79.panic_suppression_chance = 1
--	tweak_data.weapon.gre_m79.ignore_damage_upgrades = true
	tweak_data.weapon.gre_m79.stats = {
		damage = 210,
		spread = 26,
		recoil = 26,
		spread_moving = 26,
		zoom = 10,
		concealment = 30,
		suppression = 20,
		alert_size = 20,
		extra_ammo = 56,
		total_ammo_mod = 20,
		value = 10,
		reload = 21
	}
	tweak_data.weapon.gre_m79.stats_modifiers = {damage = 100}	