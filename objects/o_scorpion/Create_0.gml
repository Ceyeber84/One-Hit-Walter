/// @description variables
randomise();
hspeed_ = 4;
vspeed_ = 0;

health_ = 4;

gravity_ = 0.1;

bullet_cooldown_ = room_speed * 2;
alarm[0] = bullet_cooldown_;
event_inherited();