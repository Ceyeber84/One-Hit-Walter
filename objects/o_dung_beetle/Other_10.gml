/// @description ROLLING

if move = true {
	hspeed_ = lerp(hspeed_, 2.5 * sign(hspeed_), .05);
}

// Grow Ball

if instance_exists(dung_id) {
	dung_id.x = x + 17 * sign(hspeed_);
	dung_id.image_xscale += .01;
	dung_id.image_yscale += .01;
}

// Switch States
if instance_exists(dung_id) {
	if dung_id.image_xscale >= 3 {
		state = SHOOTING;
		dung_id.state = SHOOTING;
		saved_speed_ = sign(hspeed_);
		hspeed_ = 0;
		move = false;
		alarm[0] = room_speed;
	}
}
decide_dir = true;

