/// @description Shoot

if alarm[0] <= 0 {
	alarm[0] = shoot_cd + random_range(-room_speed, room_speed);
	var lava_drop = instance_create_layer(x, y, "Instances", o_lava_drop);
	lava_drop.direction = shoot_dir;
}