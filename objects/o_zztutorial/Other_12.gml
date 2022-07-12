/// @description ABILITY
draw_sprite(s_zztutorial_abilitytext, image_index, 290, 38);

if global.laser_unlocked_ = true {
	if mouse_check_button_pressed(mb_right) {
			alarm[0] = room_speed*4;
	}
}

if global.battery_unlocked_ = true {
	if keyboard_check_pressed(ord("E")) {
			alarm[0] = room_speed*4;
	}
}

if global.shield_unlocked_ = true {
	if keyboard_check_pressed(ord("F")) {
			alarm[0] = room_speed*4;
	}
}

if alarm[0] <= 0 {
	alarm[0] = room_speed*1000;
	instance_create_depth(517, 456, 50, o_snail);
	instance_create_depth(156, 456, 50, o_snail);
	state = ENEMY;
}