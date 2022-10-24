/// @description Waiting
hspeed_ = 0;
vspeed_ = 0;

if instance_exists(o_walter){
	y = o_walter.y;
}

if alarm[0] <= 0 {
	alarm[0] = attack_cooldown_;
	state = ATTACK;
}