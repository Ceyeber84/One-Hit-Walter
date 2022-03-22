/// @description Set Variables

dodge_direction_ = 0;
A = [0, 0];
B = [0, 0];
turn_speed_ = 1.6;
turn_x = 1;
turn_y = 1;

hspeed_	= 0;
vspeed_ = 1;
max_hspeed_ = 0;
max_vspeed_ = 0;

health_ = 1000;

// Cooldowns

alarm[0] = room_speed / 30;
alarm[1] = room_speed;

// States

DODGE = 1;
HOVER = 0;
state = HOVER;