/// @description Activate Shield

if instance_exists(o_walter) {
	if unlocked_ && keyboard_check(ord("F")) && alarm[1] <= 0 {
		alarm[0] = room_speed * activity_;
		alarm[1] = room_speed * cooldown_;

		instance_create_layer(o_walter.x+32, o_walter.y+32, "Instances", o_shield);
	}
}

if instance_exists(o_shield) && alarm[0] <= 0 {
	instance_destroy(o_shield);
}