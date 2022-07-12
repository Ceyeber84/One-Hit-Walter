/// @description Draw Messages
//Special Messages
var roomname = room_get_name(room);

if roomname = "room_1_5" && !instance_exists(o_enemyparent) {
	draw_sprite(s_zzmessage_checkpoint, image_index, room_width/2, room_height/4);	
}

if roomname = "room_1_9" && !instance_exists(o_enemyparent) {
	draw_sprite(s_zzmessage_bossfight, image_index, room_width/2, room_height/4);	
}