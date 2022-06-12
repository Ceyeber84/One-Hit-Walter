/// @description Initiate delver

event_inherited();
health_ = 10;

shoot_cd = room_speed * 4;
alarm[0] = shoot_cd;
tendril_cd = room_speed * 4;
alarm[1] = room_speed * 2;

// states

IDLE = 0;
ATTACKING = 1;
state = IDLE;