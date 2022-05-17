/// @description Attack

// 20 by 130
// 210 by 450
// 510 by 130
// 430 by 30
// 320 by 240
if choose_attack_ = true {
	choose_attack_ = false;
	attack_value_ = irandom_range(1, 1);
	alarm[1] = room_speed * 1.5;
	if attack_value_ = 1 {
		instance_create_depth(20, 130, -10, o_wolf_warning_long);
	}
	if attack_value_ = 2 {
		instance_create_depth(210, 450, -10, o_wolf_warning_long);
		o_wolf_warning_long.image_angle = 90;
	}
	if attack_value_ = 3 {
		instance_create_depth(510, 130, -10, o_wolf_warning_long);
	}
	if attack_value_ = 4 {
		instance_create_depth(430, 30, -10, o_wolf_warning_long);
		o_wolf_warning_long.image_angle = 270;
	}
	if attack_value_ = 5 {
		instance_create_depth(320, 240, -10, o_wolf_warning_mid);
	}
}

/*	20 by 450
*/
if alarm[1] <= 0 {
	if instance_exists(o_wolf_warning_long) {
		instance_destroy(o_wolf_warning_long);
	}
	if instance_exists(o_wolf_warning_mid) {
		instance_destroy(o_wolf_warning_mid);
	}
	if attack_value_ = 1 {
		instance_create_layer(20, 450, "Instances", o_wolf_arm);
		o_wolf_arm.dir = 0;
	}
	if attack_value_ = 5 {
		mask_index = sprite_index;
		image_index = 1;
	}
	state = IDLE;
}