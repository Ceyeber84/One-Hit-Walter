/// @description ROLLING

if move = true {
	hspeed_ = lerp(hspeed_, 2.5 * sign(hspeed_), .05);
}

// Grow Ball

if instance_exists(o_dung) {
	o_dung.x = x + 17 * sign(hspeed_);
	o_dung.image_xscale += .01;
	o_dung.image_yscale += .01;
}

// Switch States

if o_dung.image_xscale >= 3 {
	state = SHOOTING;
	o_dung.state = SHOOTING;
	saved_speed_ = sign(hspeed_);
	hspeed_ = 0;
	move = false;
	alarm[0] = room_speed;
}

decide_dir = true;