/// @description Music and Checkpoint
//Play Music
var roomname = room_get_name(room);

if roomname = "z_wolfboss" && !audio_is_playing(so_musicsandworm) {
	audio_play_sound(so_musicsandworm, 9, true);	
	if audio_exists(so_musicwolf) {
		audio_stop_sound(so_musicwolf);
	}
}

//Activate Checkpoint
if roomname = "room_1_6" {
	global.checkpoint = 1;
	global.lives = 3;
}