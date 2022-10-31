/// @description Variables
//Movement
hspeed_ = 1;
vspeed_ = 1;
hacceleration_ = 0.05;
vacceleration_ = 0.05;
max_speed_ = 2.5;
hspeed_push_ = 0;
vspeed_push_ = 0;

direction_x = o_walter.x;
direction_y = o_walter.y;

depth = 0;
event_inherited();
//States
ATTACK = 0;
SLOW = 1;

state = ATTACK;

//Gameplay
health_ = 3;
hitbyshield_ = false;
alarm[0] = 0;