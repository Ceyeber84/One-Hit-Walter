/// @description Idle

if alarm[0] <= 0 {
	state = ATTACK;
	choose_attack_ = true;
	alarm[0] = room_speed * 6;
}