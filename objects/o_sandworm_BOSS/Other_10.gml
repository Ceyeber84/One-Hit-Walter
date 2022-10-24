/// @description Waiting
hspeed_ = 0;
vspeed_ = 0;
/*
if x > room_width {
	variable_instance_set(self, "side", 1);
}
if x < 0 {
	variable_instance_set(self, "side", -1);
}
*/
if instance_exists(o_walter){
	y = o_walter.y;
}

if alarm[0] <= 0 {
	alarm[0] = attack_cooldown_;
	state = ATTACK;
}