/// @description Shoot

if alarm[0] <= 0 {
	alarm[0] = shoot_cd;
	var lava_drop = instance_create_layer(x, y, "Instances", o_lava_drop);
	lava_drop.direction = shoot_dir;
}