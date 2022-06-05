/// @description Initiate Earwig

event_inherited();

vspeed_ = 0;
hspeed_ = 0;
gravity_ = .1;
health_ = 15;
jump_cd = room_speed * 4;

alarm[0] = 0;

// States

LURK = 0;
JUMP = 1;
state = JUMP;