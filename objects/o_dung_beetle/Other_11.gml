/// @description SHOOTING

hspeed_ = lerp(hspeed_, 0, .05);

if instance_exists(o_walter) {
	if alarm[0] <= 0 {
		if decide_dir = true {
			var dir = point_direction(x, y, o_walter.x, o_walter.y);
			o_dung.hspeed_ = lengthdir_x(8, dir);
			o_dung.vspeed_ = lengthdir_y(13, dir);
			decide_dir = false;
		}
	}
}

if move = true {
	state = ROLLING;
	hspeed_ = saved_speed_
	instance_create_depth(x + 4 * sign(hspeed_), y + 1, -5, o_dung);
}