-- BERNETTI 9MM TWEAKS
--	tweak_data.weapon.b92fs = {}
--	tweak_data.weapon.b92fs.category = "pistol"
--	tweak_data.weapon.b92fs.damage_melee = damage_melee_default
--	tweak_data.weapon.b92fs.damage_melee_effect_mul = damage_melee_effect_multiplier_default
--	tweak_data.weapon.b92fs.sounds = {}
--	tweak_data.weapon.b92fs.sounds.fire = "beretta_fire"
--	tweak_data.weapon.b92fs.sounds.enter_steelsight = "pistol_steel_sight_enter"
--	tweak_data.weapon.b92fs.sounds.leave_steelsight = "pistol_steel_sight_exit"
--	tweak_data.weapon.b92fs.sounds.dryfire = "secondary_dryfire"
--	tweak_data.weapon.b92fs.timers = {}
	tweak_data.weapon.b92fs.timers.reload_not_empty = 0.01
	tweak_data.weapon.b92fs.timers.reload_empty = 0.01
	tweak_data.weapon.b92fs.timers.unequip = 0.01
	tweak_data.weapon.b92fs.timers.equip = 0.01
--	tweak_data.weapon.b92fs.name_id = "Baddog-11's Bernetti 9mm"
--	tweak_data.weapon.b92fs.desc_id = "bm_w_b92fs_desc"
--	tweak_data.weapon.b92fs.description_id = "des_b92fs"
--	tweak_data.weapon.b92fs.muzzleflash = "effects/payday2/particles/weapons/9mm_auto_fps"
--	tweak_data.weapon.b92fs.muzzleflash_silenced = "effects/payday2/particles/weapons/9mm_auto_silence_fps"
--	tweak_data.weapon.b92fs.shell_ejection = "effects/payday2/particles/weapons/shells/shell_9mm"
--	tweak_data.weapon.b92fs.use_data = {}
--	tweak_data.weapon.b92fs.use_data.selection_index = 1
	tweak_data.weapon.b92fs.DAMAGE = 100
	tweak_data.weapon.b92fs.CLIP_AMMO_MAX = 100
	tweak_data.weapon.b92fs.NR_CLIPS_MAX = 100
--	tweak_data.weapon.b92fs.AMMO_MAX = tweak_data.weapon.b92fs.CLIP_AMMO_MAX * tweak_data.weapon.b92fs.NR_CLIPS_MAX
	tweak_data.weapon.b92fs.AMMO_PICKUP = tweak_data.weapon:_pickup_chance(tweak_data.weapon.b92fs.AMMO_MAX, 1)
--	tweak_data.weapon.b92fs.FIRE_MODE = "single"
--	tweak_data.weapon.b92fs.fire_mode_data = {}
--	tweak_data.weapon.b92fs.fire_mode_data.fire_rate = 0.125
--	tweak_data.weapon.b92fs.single = {}
--	tweak_data.weapon.b92fs.single.fire_rate = 0.125
--	tweak_data.weapon.b92fs.spread = {}
--	tweak_data.weapon.b92fs.spread.standing = tweak_data.weapon.new_m4.spread.standing
--	tweak_data.weapon.b92fs.spread.crouching = tweak_data.weapon.new_m4.spread.crouching
--	tweak_data.weapon.b92fs.spread.steelsight = tweak_data.weapon.new_m4.spread.steelsight
--	tweak_data.weapon.b92fs.spread.moving_standing = tweak_data.weapon.new_m4.spread.moving_standing
--	tweak_data.weapon.b92fs.spread.moving_crouching = tweak_data.weapon.new_m4.spread.moving_crouching
--	tweak_data.weapon.b92fs.spread.moving_steelsight = tweak_data.weapon.new_m4.spread.moving_steelsight
--	tweak_data.weapon.b92fs.kick = {}
--	tweak_data.weapon.b92fs.kick.standing = tweak_data.weapon.glock_17.kick.standing
--	tweak_data.weapon.b92fs.kick.crouching = tweak_data.weapon.b92fs.kick.standing
--	tweak_data.weapon.b92fs.kick.steelsight = tweak_data.weapon.b92fs.kick.standing
--	tweak_data.weapon.b92fs.crosshair = {}
--	tweak_data.weapon.b92fs.crosshair.standing = {}
--	tweak_data.weapon.b92fs.crosshair.crouching = {}
--	tweak_data.weapon.b92fs.crosshair.steelsight = {}
	tweak_data.weapon.b92fs.crosshair.standing.offset = 0.01
	tweak_data.weapon.b92fs.crosshair.standing.moving_offset = 0.01
	tweak_data.weapon.b92fs.crosshair.standing.kick_offset = 0.01
	tweak_data.weapon.b92fs.crosshair.crouching.offset = 0.01
	tweak_data.weapon.b92fs.crosshair.crouching.moving_offset = 0.01
	tweak_data.weapon.b92fs.crosshair.crouching.kick_offset = 0.01
--	tweak_data.weapon.b92fs.crosshair.steelsight.hidden = true
	tweak_data.weapon.b92fs.crosshair.steelsight.offset = 0.01
	tweak_data.weapon.b92fs.crosshair.steelsight.moving_offset = 0.01
	tweak_data.weapon.b92fs.crosshair.steelsight.kick_offset = 0.01
--	tweak_data.weapon.b92fs.shake = {}
	tweak_data.weapon.b92fs.shake.fire_multiplier = 0.01
	tweak_data.weapon.b92fs.shake.fire_steelsight_multiplier = 0.01
--	tweak_data.weapon.b92fs.autohit = autohit_pistol_default
--	tweak_data.weapon.b92fs.aim_assist = aim_assist_pistol_default
--	tweak_data.weapon.b92fs.weapon_hold = "glock"
--	tweak_data.weapon.b92fs.animations = {}
--	tweak_data.weapon.b92fs.animations.equip_id = "equip_glock"
--	tweak_data.weapon.b92fs.animations.recoil_steelsight = true
	tweak_data.weapon.b92fs.panic_suppression_chance = 1
	tweak_data.weapon.b92fs.stats = {
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