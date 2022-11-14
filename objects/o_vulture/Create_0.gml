/// @description Initiate

event_inherited();
depth = 10;

hspeed_ = 2;
vspeed_ = 0;
max_hspeed_ = 2;
max_vspeed_ = 6;

health_ = 13;

FLY = 0;
ATTACK = 1;
RECOVER = 2;

state = FLY;

direction_ = 0;
x_return = 0;
y_return = 0;

randomise();
alarm[0] = random_range(room_speed * 3, room_speed * 6);
