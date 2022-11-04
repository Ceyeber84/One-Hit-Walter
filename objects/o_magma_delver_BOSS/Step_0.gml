/// @description Beat up Walter

event_inherited();

event_user(state);

if alarm[0] <= 0 {
	alarm[0] = shoot_cd;
	if instance_exists(o_walter) {
		bulletdir = point_direction(x, y, o_walter.x, o_walter.y);
		audio_play_sound(so_enemyshoot, 1, false);
	}
	instance_create_layer(x, y, "Instances", o_lava_bubble);
}

if health_ <= 0 {
	audio_stop_all();
	audio_play_sound(so_bossdeath, 1, false);
	instance_destroy(o_magma_block);
	instance_destroy(self);
}