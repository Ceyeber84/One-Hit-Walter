/// @description destroy dung

if state = SHOOTING {
	o_walter.health_ -= 1;
	o_dung_beetle.move = true;
	instance_destroy(self);
}