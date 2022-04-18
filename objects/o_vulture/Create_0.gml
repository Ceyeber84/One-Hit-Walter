/// @description Initiate

event_inherited();
depth = 10;
hspeed_ = 2;
vspeed_ = 0;
max_hspeed_ = 2;

health_ = 4;

FLY = 0;
ATTACK = 1;
RECOVER = 2;

state = FLY;

alarm[0] = room_speed * 5;