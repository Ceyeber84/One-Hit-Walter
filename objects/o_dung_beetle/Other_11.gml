/// @description SHOOTING

hspeed_ = lerp(hspeed_, 0, .05);

if instance_exists(o_walter) {
	if alarm[0] <= 0 {
		if decide_dir = true {
			var dir = point_direction(x, y, o_walter.x, o_walter.y);
			dung_id.hspeed_ = lengthdir_x(9, dir);
			dung_id.vspeed_ = lengthdir_y(10, dir);
			audio_play_sound(so_enemyshoot, 1, false);
			decide_dir = false;
		}
	} else {
		dung_id.x = x + 17;
	}
}

if move = true {
	state = ROLLING;
	hspeed_ = saved_speed_
	inst = instance_create_depth(x + 8 * sign(hspeed_), y + 1, -5, o_dung);
	inst.creator_id = id;
	variable_instance_set(self,"dung_id",inst.id);
}
