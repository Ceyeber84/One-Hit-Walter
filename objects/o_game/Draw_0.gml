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
if ds_list_find_index(rooms_noncombat,room) == -1 || room = c_tutorial {
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

//Sandstorm
if sandstorm_active_ = true {
	draw_sprite_ext(s_background_sandstorm, image_index, room_width/2, 0, sandstorm_direction_, image_yscale, image_angle, image_blend, image_alpha);	
}

/*
if room = TESTROOM {
	draw_text_ext_transformed(room_width/2 - 280, room_height/2 - 128, "the quick brown fox jumps over the lazy dog", 10, 150, 4, 4, 0);
	draw_text_ext_transformed(room_width/2 - 280, room_height/2, "The Quick Brown Fox Jumps Over The Lazy Dog", 10, 150, 4, 4, 0);
	draw_text_ext_transformed(room_width/2 - 280, room_height/2 + 128, "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG", 10, 150, 4, 4, 0);
}
*/