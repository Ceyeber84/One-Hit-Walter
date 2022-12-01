/// @description FINISH
//draw_sprite(s_zztutorial_finishtext, image_index, room_width/2, room_height/4);
draw_text_ext_transformed(room_width/2, room_height/4 - 32, "Well Done!", 10, 160, 3, 3, 0);
draw_text_ext_transformed(room_width/2, room_height/4, "You Are Now Ready For The Real Challenge.", 10, 160, 3, 3, 0);
draw_text_ext_transformed(room_width/2, room_height/4 + 64, "Good Luck!", 10, 160, 3, 3, 0);
if alarm[0] <= 0 {
	room_goto_next();
}