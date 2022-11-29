// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ability_icons(){

if global.ability1 == "Laser" {
	instance_create_depth(24, 56, -900, o_laserability);	
}
if global.ability1 == "Shield" {
	instance_create_depth(24, 56, -900, o_shieldicon);	
}
if global.ability1 == "Battery" {
	instance_create_depth(24, 56, -900, o_battery);	
}

if global.ability2 == "Laser" {
	instance_create_depth(72, 56, -900, o_laserability);	
}if global.ability2 == "Shield" {
	instance_create_depth(72, 56, -900, o_shieldicon);	
}if global.ability2 == "Battery" {
	instance_create_depth(72, 56, -900, o_battery);	
}

if global.ability3 == "Laser" {
	instance_create_depth(120, 56, -900, o_laserability);	
}if global.ability3 == "Shield" {
	instance_create_depth(120, 56, -900, o_shieldicon);	
}if global.ability3 == "Battery" {
	instance_create_depth(120, 56, -900, o_battery);	
}
}