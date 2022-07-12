/// @description Return to Menu
var roomname = room_get_name(room);
var roomindex = asset_get_index("room_1_6");
global.lives = 3;

if global.checkpoint = 1 && roomname != "zz_endscreen" {
	room_goto(roomindex);
	
} else {
	game_restart();
}