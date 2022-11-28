/// @description Unlock Ability
if room = b_abilityselect1 {
	global.ability1 = "Shield"
}

if room = b_abilityselect2 {
	global.ability2 = "Shield"
}

if room = b_abilityselect3 {
	global.ability3 = "Shield"
}

global.shield_unlocked_ = true;
room_goto_next();