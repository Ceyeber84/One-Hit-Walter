/// @description Switch Music
//Play Music
var roomname = room_get_name(room);
if roomname = "z_wolfboss" {
	audio_play_sound(so_musicwolf_demo, 9, true);	
	if audio_exists(so_musicworld1_demo) {
		audio_stop_sound(so_musicworld1_demo);
	}
}