/// @description SHOOT
draw_sprite(s_zztutorial_shoottext, image_index, room_width/2, room_height/4);
o_walter.ability_disabled_ = true;

if alarm[0] >= room_speed*8 {
	if mouse_check_button(mb_left) {
		alarm[0] = room_speed*5;
	}
}

if alarm[0] <= 0 {
	alarm[0] = room_speed*1000;
	state = ABILITY;
}