/// @description Take damage

instance_destroy(other);
if instance_exists(o_wolf_BOSS) {
	o_wolf_BOSS.health_ -= 1;
}