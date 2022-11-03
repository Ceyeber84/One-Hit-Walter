/// @description Block Bullet

if instance_exists(o_dung) && instance_exists(o_dung_beetle) {
	if other.id = o_dung.id {
		o_dung_beetle.move = true;
	}
}

audio_play_sound(so_bulletonshield, 1, false);
instance_destroy(other);