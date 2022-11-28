/// @description Create GUI
if global.ability1 != "Laser" && global.ability2 != "Laser" {
	instance_create_depth(room_width/2, room_height/2, 0, o_zzability_laserselect);	
}
if global.ability1 != "Shield" && global.ability2 != "Shield" {
	instance_create_depth(room_width/2, room_height/2, 0, o_zzability_shieldselect);	
}
if global.ability1 != "Battery" && global.ability2 != "Battery" {
	instance_create_depth(room_width/2, room_height/2, 0, o_zzability_batteryselect);	
}