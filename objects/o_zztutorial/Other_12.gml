/// @description ABILITY
draw_sprite(s_zztutorial_abilitytext, image_index, 290, 38);

if alarm[0] >= room_speed*8 {
	if mouse_check_button(mb_left) {
		alarm[0] = room_speed*5;
	}
}

if alarm[0] <= 0 {
	alarm[0] = room_speed*1000;
	instance_create_depth(517, 456, 50, o_snail);
	instance_create_depth(156, 456, 50, o_snail);
	state = ENEMY;
}