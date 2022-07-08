/// @description Get yeeted
if alarm[0] <0 {
	if instance_exists(creator_id) {
		if state = SHOOTING && o_dung_beetle.decide_dir = false {
			vspeed_ += gravity_;
		}

		x += hspeed_;
		y += vspeed_;
		projectile_spin(hspeed_);

		if y >= 500 {
			o_dung_beetle.move = true;
			instance_destroy(self);
		}
	}
	/*else {
		instance_destroy();	
	}*/
}

//Debug
if alarm[9] <= 0 {
	show_debug_message(creator_id);

	alarm[9] = room_speed/2;
}