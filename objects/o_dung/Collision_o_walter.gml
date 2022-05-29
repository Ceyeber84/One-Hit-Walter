/// @description destroy dung

if state = SHOOTING {
	o_dung_beetle.move = true;
	instance_destroy(self);
}