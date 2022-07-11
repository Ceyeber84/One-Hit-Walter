/// @description FINISH
draw_sprite(s_zztutorial_finishtext, image_index, room_width/2, room_height/4);

if alarm[0] <= 0 {
	room_goto_next();
}