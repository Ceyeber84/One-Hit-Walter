/// @description
//Activate Abilities
if abilities_activated = false {
	if ds_list_find_index(rooms_noncombat, room) = -1 {
		abilities_activated = true;
		ability_icons();	
	}
}

//Switch Sandstorm Direction
if sandstorm_active_ = true {
	if alarm[0] <= 0 {
		sandstorm_direction_ = sandstorm_direction_ * -1;
		alarm[0] = room_speed * 8;
	}

	if alarm[0] <= room_speed*3 {
		indicator_blink_ = true;	
	} else {
		indicator_blink_ = false;	
	}
}

// Base Music on Room

if room != current_room && room != a_title_screen && room != b_abilityselect1  {
	if global.campaign = 1 {
		if instance_exists(o_wolf_BOSS) {
			audio_stop_all();
			audio_play_sound(so_musicwolf, 1, true);
		} else if !audio_is_playing(so_musiccp1){
			audio_stop_all();
			audio_play_sound(so_musiccp1, 1, true);
		}
	} else if global.campaign = 2 {
		if instance_exists(o_sandworm_BOSS) {
			audio_stop_all();
			audio_play_sound(so_musicsandworm, 1, true);
		} else if !audio_is_playing(so_musiccp2){
			audio_stop_all();
			audio_play_sound(so_musiccp2, 1, true);
		}
	} else if global.campaign = 3 && !instance_exists(o_magma_delver_BOSS) {
		if instance_exists(o_magma_delver_BOSS) {
			audio_stop_all();
			audio_play_sound(so_musicmagmadelver, 1, true);
		} else if !audio_is_playing(so_musiccp3){
			audio_stop_all();
			audio_play_sound(so_musiccp3, 1, true);
		}
	}
}

if room = a_title_screen && room != current_room {
	audio_stop_all();
	audio_play_sound(so_musicwolf, 1, true);
}

current_room = room;


//Next Room
if ds_list_find_index(rooms_noncombat, room) = -1 {
	if !instance_exists(o_enemyparent) && alarm[1] > room_speed * 10 {
		alarm[1] = room_speed * 3;
	}
}

if alarm[1] <= 0 && room_next(room) != -1 {
	abilities_activated = false;
	room_goto_next();
	alarm[1] = room_speed * 1000;
}

if alarm[1] <= room_speed * 10 && instance_exists(o_enemyparent) {
	alarm[1] = room_speed * 1000;
}

/*

//Debug
/*var width = surface_get_width(application_surface);
var height = surface_get_height(application_surface);
if alarm[1] <= 0 {
	show_debug_message(width);
	show_debug_message(height);	
	alarm[1] = room_speed;
}*/