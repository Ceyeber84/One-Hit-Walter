/// @description Initiate delver

visible = true;

event_inherited();
bulletdir = 0;
health_ =1;

// 80 HEALTH
hspeed_ = 0;
vspeed_ = 0;
direction_ = 0;

shoot_cd = room_speed * 4;
alarm[0] = shoot_cd;
tendril_cd = room_speed * 4;
alarm[1] = room_speed * 2;

// states

IDLE = 0;
ATTACKING = 1;
state = IDLE;