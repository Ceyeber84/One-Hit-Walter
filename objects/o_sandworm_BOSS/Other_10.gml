/// @description Waiting

if x > room_width {
	variable_instance_set(self, "side", 1);
}
if x < 0 {
	variable_instance_set(self, "side", -1);
}

if instance_exists(o_walter){
	y = o_walter.y;
}

if alarm[0] <= 0 {
	state = ATTACK;
}