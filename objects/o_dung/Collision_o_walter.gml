/// @description destroy dung

if state = SHOOTING {
	if instance_exists(creator_id) {
		creator_id.move = true;
	}
	instance_destroy(self);
}