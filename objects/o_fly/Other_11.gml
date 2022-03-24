/// @description Dodge

hspeed_ = 0;
vspeed_ = 0;

// Calculate if dodge -90 or +90 degrees

// Calculate point A

if instance_exists(o_bullet) {
	if set_angle_ = true {	
		var aanliggend_A = x - o_bullet.x;
		if o_bullet.hspeed_ != 0 {
			var alpha_A = arctan(o_bullet.vspeed_ / o_bullet.hspeed_) * 180 / pi;
		} else {
			var alpha_A = 0.5 * pi;
		}
		var schuin_A = aanliggend_A / cos(alpha_A);
		var overstaand_A = lengthdir_y(schuin_A, o_bullet.direction_);
		if y >= o_bullet.y {
			overstaand_A = -overstaand_A;
		}
		A = [o_bullet.x + aanliggend_A, o_bullet.y + overstaand_A];
		if x = A[0] {
			var dodge_dir = (y <= A[1]) - (y > A[1]);
		}

	// Calculate point B

		var aanliggend_B = y - o_bullet.y;
		if o_bullet.hspeed_ != 0 {
			var alpha_B = (90 - arctan(o_bullet.vspeed_ / o_bullet.hspeed_)) * 180 / pi;
		} else {
			alpha_B = 0.5 * pi;
		}
		var schuin_B = aanliggend_B / cos(alpha_B);
		var overstaand_B = lengthdir_x(schuin_B, o_bullet.direction_);
		if x <= o_bullet.x {
			overstaand_B = -overstaand_B;
		}
		B = [o_bullet.x + overstaand_B, o_bullet.y + aanliggend_B]
		if y = B[1] {
			var dodge_dir = (x >= B[0]) - (x < B[0]);
		}

		// Dodge

		dodge_direction_ = o_bullet.direction_ + 90 * dodge_dir;
		if dodge_direction_ > 360 or dodge_direction_ < 0 {
			dodge_direction_ = dodge_direction_ - 360 * ((dodge_direction_ > 360) - (dodge_direction_ < 0));
		}
	}
}

if set_angle_ = false {
	hspeed_ = lengthdir_x(9, dodge_direction_);
	vspeed_ = lengthdir_y(9, dodge_direction_);
}
hspeed_ = lerp(hspeed_, 0, .5);
vspeed_ = lerp(vspeed_, 0, .5);
if hspeed_ <= 0.3 && vspeed_ <= 0.3 {
	state = HOVER;
	alarm[0] = room_speed;
}
set_angle_ = true;
