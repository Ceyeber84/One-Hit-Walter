/// @description Get yeeted
if alarm[0] <0 {
	if instance_exists(creator_id) {
		if state = SHOOTING && creator_id.decide_dir = false {
			vspeed_ += gravity_;
		}

		x += hspeed_;
		y += vspeed_;
		projectile_spin(hspeed_);

		if y >= 500 {
			creator_id.move = true;
			instance_destroy(self);
		}
	}
	else {
		instance_destroy();	
	}
}