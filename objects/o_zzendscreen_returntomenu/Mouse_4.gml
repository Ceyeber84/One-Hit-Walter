/// @description Return to Menu
var roomindex = asset_get_index("room_1_6");
global.lives = 3;

if global.checkpoint = 1 {
	room_goto(roomindex);
	
} else {
	game_restart();
}