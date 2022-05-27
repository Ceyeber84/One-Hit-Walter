/// @description Block Bullet

if instance_exists(o_dung) && instance_exists(o_dung_beetle) {
	if other.id = o_dung.id {
		o_dung_beetle.move = true;
	}
}
instance_destroy(other);