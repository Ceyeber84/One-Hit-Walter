/// @description Draw Messages and Health
//Special Messages
var roomname = room_get_name(room);

if roomname = "room_1_5" && !instance_exists(o_enemyparent) {
	draw_sprite(s_zzmessage_checkpoint, image_index, room_width/2, room_height/4);	
}

if roomname = "room_1_9" && !instance_exists(o_enemyparent) {
	draw_sprite(s_zzmessage_bossfight, image_index, room_width/2, room_height/4);	
}

//Health
if (roomname != "a_title_screen") && (roomname != "b_abilityselect1" ) && (roomname != "zz_endscreen") {
	if global.lives = 3 {
		draw_sprite(s_hearts3, image_index, x, y);	
	}

	if global.lives = 2 {
		draw_sprite(s_hearts2, image_index, x, y);	
	}

	if global.lives = 1 {
		draw_sprite(s_heart, image_index, x, y);	
	}
}