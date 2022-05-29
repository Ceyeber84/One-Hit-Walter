/// @description Insert description here
if instance_exists(o_wolf_BOSS) {
	draw_self();

	var healthbarx1 = x-156;
	var healthbary1 = y-12;

	var healthbarx2 = x-156+312*(o_wolf_BOSS.health_/o_wolf_BOSS.max_health_);
	var healthbary2 = y+12;

	draw_set_color(c_red);
	draw_rectangle(healthbarx1,healthbary1,healthbarx2,healthbary2,false);
	draw_set_color(c_white);
} else {
	instance_destroy();	
}