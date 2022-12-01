/// @description ENEMY
//draw_sprite(s_zztutorial_enemytext, image_index, 320, 384);
draw_text_ext_transformed(room_width/2, room_height/4, "These Are Your Enemies. Get Rid Of Them Without Getting Hit!", 10, 160, 3, 3, 0);

if !instance_exists(o_snail) {
	alarm[0] = room_speed*7;
	state = FINISH;	
}