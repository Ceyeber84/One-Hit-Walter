/// @description FLY
//draw_sprite(s_zztutorial_flytext, image_index, room_width/2, room_height/4);
draw_text_ext_transformed(room_width/2, room_height/4, "Use ''WASD'' To Fly Around The Room!", 10, room_width, 3, 3, 0);
o_walter.ability_disabled_ = true;

if alarm[0] >= room_speed*6 {
	if o_walter.hspeed_ > 0 {
		alarm[0] = room_speed*4;
	}
}

if alarm[0] <= 0 {
	alarm[0] = room_speed*1000;
	state = SHOOT;
}