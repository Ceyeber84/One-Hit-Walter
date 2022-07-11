/// @description Initiate Spider

event_inherited();
randomise();

speed_ = 3;
dir = irandom_range(1, 360);
hspeed_ = lengthdir_x(speed_, dir);
vspeed_ = lengthdir_y(speed_, dir);
direction_ = 0;

web_cd = room_speed * 3;
alarm[0] = web_cd;

health_ = 6;