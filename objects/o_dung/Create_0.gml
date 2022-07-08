/// @description Initialise the bullet

hspeed_ = 0;
vspeed_ = 0;
gravity_ = .1;
creator_id = 0;

//STATES

ROLLING = 0;
SHOOTING = 1;
state = ROLLING;

//Debug
alarm[0] = 5;
alarm[9] = room_speed/2;