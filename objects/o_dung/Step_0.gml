/// @description Get yeeted

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