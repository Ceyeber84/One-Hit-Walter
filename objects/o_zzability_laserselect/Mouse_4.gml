/// @description Unlock Ability
if room = b_abilityselect1 {
	global.ability1 = "Laser"
}

if room = b_abilityselect2 {
	global.ability2 = "Laser"
}

if room = b_abilityselect3 {
	global.ability3 = "Laser"
}

global.laser_unlocked_ = true;
room_goto_next();