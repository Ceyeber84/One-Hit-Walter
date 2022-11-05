/// @description Step event

event_inherited();

if health_ <= .5 * max_health_ && phase3triggered = false {
	state = ANGRY;
	phase3triggered = true;
}
event_user(state);

if health_ <= 0 {
	audio_stop_all();
	audio_play_sound(so_bossdeath, 1, false);
	global.campaign = 2;
	instance_destroy(self);
}

if alarm[2] <= 0 {
	mask_index = -1;
	image_index = 0;
}
/*
//Spawn Enemy
if alarm[3] <= 0 {
	var enemy = irandom(2);
	if enemy = 0 {
		instance_create_depth(room_width/2, room_height*0.9, -10000, o_bullfrog);	
	}

	if enemy = 1 {
		instance_create_depth(room_width/2, room_height*0.9, -10000, o_swallow);	
	}

	if enemy = 2 {
		instance_create_depth(room_width/2, room_height*0.9, -10000, o_spider);	
	}	
}