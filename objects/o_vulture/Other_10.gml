/// @description Fly

if x > room_width * 0.8 {
	hspeed_ -= .04;
}

if x < room_width * 0.2 {
	hspeed_ += .04;
}

if room_width * 0.2 < x && x < room_width * 0.8 {
	hspeed_ = lerp(hspeed_, max_hspeed_ * sign(hspeed_), .1);
}

vspeed_ = lerp(vspeed_, 0, .1);

hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);

if alarm[0] <= 0 && instance_exists(o_walter) {
	variable_instance_set(self, "x_return", x);
	variable_instance_set(self, "y_return", y);
	state = ATTACK;	
}
