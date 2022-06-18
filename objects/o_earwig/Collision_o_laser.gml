/// @description Take damage

if state = JUMP {
	Laser_DMG_Knockback(0, self, self);
	show_debug_message(health_);
}