/// @description Create GUI
if global.ability1 == "Laser" {
		instance_create_depth(room_width/3, room_height/2, 0, o_zzability_batteryselect);
		instance_create_depth(2*(room_width/3), room_height/2, 0, o_zzability_shieldselect);
}

if global.ability1 == "Shield" {
		instance_create_depth(room_width/3, room_height/2, 0, o_zzability_batteryselect);
		instance_create_depth(2*(room_width/3), room_height/2, 0, o_zzability_laserselect);
}

if global.ability1 == "Battery" {
		instance_create_depth(room_width/3, room_height/2, 0, o_zzability_shieldselect);
		instance_create_depth(2*(room_width/3), room_height/2, 0, o_zzability_laserselect);
}