/// @description Laser

if instance_exists(o_magma_delver_BOSS) {
	Laser_DMG_Knockback(0, o_magma_tendril, o_magma_delver_BOSS);
	o_magma_delver_BOSS.health_ += health_;
}