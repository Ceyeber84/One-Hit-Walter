/// @description Initiate the frog

randomise();
event_inherited();

// Set Jump Cooldown

alarm[0] = room_speed * 2;

hspeed_ = 0;
vspeed_ = 0;
gravity_ = 0.1;
max_hspeed_ = 7;
max_vspeed_ = 8.5;
health_ = 10;
facing_ = -1;

// States

JUMPING = 0;
NOT_JUMPING = 1;

state = NOT_JUMPING;

