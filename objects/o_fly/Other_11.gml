/// @description Dodge

hspeed_ = 0;
vspeed_ = 0;

// Calculate if dodge -90 or +90 degrees

// Calculate point A

if instance_exists(o_bullet) {
	if alarm[0] <= 0 {	
		var aanliggend_A = x - o_bullet.x;
		if o_bullet.vspeed_ != 0 {
			var alpha_A = arctan(o_bullet.vspeed_ / o_bullet.hspeed_) * 180 / pi;
		} else {
			var alpha_A = pi;
		}
		var schuin_A = aanliggend_A / cos(alpha_A);
		var overstaand_A = lengthdir_y(schuin_A, alpha_A * pi / 180);
		A = [o_bullet.x + aanliggend_A, o_bullet.y + overstaand_A];
		if x = A[0] {
			var dodge_dir = (y >= A[1]) - (y < A[1]);
		}

	// Calculate point B

		var aanliggend_B = y - o_bullet.y;
		if o_bullet.vspeed_ != 0 {
			var alpha_B = (90 - arctan(o_bullet.vspeed_ / o_bullet.hspeed_)) * 180 / pi;
		} else {
			alpha_B = 0;
		}
		var schuin_B = aanliggend_B / cos(alpha_B);
		var overstaand_B = lengthdir_x(schuin_B, alpha_B * pi / 180);
		B = [o_bullet.x + overstaand_B, o_bullet.y + aanliggend_B]
		if y = B[1] {
			var dodge_dir = (x >= B[0]) - (x < B[0]);
		}

		// Dodge

		dodge_direction_ = o_bullet.direction_ + 90 * dodge_dir;
	}
}

if alarm[0] <= 0 {
	hspeed_ = lengthdir_x(9, dodge_direction_);
	vspeed_ = lengthdir_y(9, dodge_direction_);
}
hspeed_ = lerp(hspeed_, 0, .5);
vspeed_ = lerp(vspeed_, 0, .5);
if hspeed_ <= 0.3 && vspeed_ <= 0.3 {
	state = HOVER;
	alarm[1] = room_speed;
}
alarm[0] = room_speed / 30;
