/// @description Take Damage

Laser_DMG_Knockback(0);
if instance_exists(o_magma_delver_BOSS) {
	o_magma_delver_BOSS.health_ += health_;
	health_ = 0;
}