/// @description Movement

if instance_exists(o_walter) {
	if alarm[0] <= 0 {
		jumping_ = true;
		var dir = point_direction(x, y, o_walter.x, o_walter.y);
		hspeed_ = 0.01 * lengthdir_x(distance_to_point(o_walter.x, o_walter.y), dir);
		vspeed_ = 0.05 * lengthdir_y(distance_to_point(o_walter.x, o_walter.y), dir);
		if (160 <= dir) or (dir <= 20) {
			vspeed_ = -3;
			hspeed_ = hspeed_ * 1.5;
		}
		alarm[0] = room_speed * 4;
	}
}

hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
vspeed_ = clamp(vspeed_, -max_vspeed_, max_vspeed_);

if !place_meeting(x, y + 1, o_wall) {
	vspeed_ += gravity_;
} else {
	if jumping_ = false {
		hspeed_ = 0;
	}
}

Collision();

x += hspeed_;
y += vspeed_;

jumping_ = false;