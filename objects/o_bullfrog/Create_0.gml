/// @description Initiate the frog

randomise();

// Set Jump Cooldown

alarm[0] = room_speed * 4;

hspeed_ = 0;
vspeed_ = 0;
gravity_ = 0.1;
max_hspeed_ = 7;
max_vspeed_ = 8.5;

depth = 0;

// States

JUMPING = 0;
NOT_JUMPING = 1;

state = NOT_JUMPING;

