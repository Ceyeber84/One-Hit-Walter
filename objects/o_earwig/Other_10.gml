/// @description LURK

if instance_exists(o_walter){
	x = o_walter.x;
}

if alarm[0] <= 0 {
	state = JUMP;
	vspeed_ = -10.2;
}