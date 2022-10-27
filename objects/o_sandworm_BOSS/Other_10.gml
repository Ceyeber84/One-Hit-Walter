/// @description Waiting
hspeed_ = 0;
vspeed_ = 0;

if alarm[0] <= 0 {
	alarm[0] = attack_cooldown_;
	state = ATTACK;
}