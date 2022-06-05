/// @description variables

randomise();
hspeed_ = 0;
vspeed_ = 0;
health_ = 15;
gravity_ = 0.1;
bullet_cooldown_ = room_speed * 2;
hop_cooldown_ = room_speed * 2;

alarm[0] = bullet_cooldown_;
alarm[1] = hop_cooldown_;

event_inherited();

