/// @description ENEMY
draw_sprite(s_zztutorial_enemytext, image_index, 320, 384);

if !instance_exists(o_snail) {
	alarm[0] = room_speed*7;
	state = FINISH;	
}