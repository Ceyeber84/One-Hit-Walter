/// @description Unlock Ability
if room = b_abilityselect1 {
	global.ability1 = "Battery"
}

if room = b_abilityselect2 {
	global.ability2 = "Battery"
}

if room = b_abilityselect3 {
	global.ability3 = "Battery"
}

global.battery_unlocked_ = true;
room_goto_next();