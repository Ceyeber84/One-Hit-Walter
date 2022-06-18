/// @description Initiate Sandworm
event_inherited();

max_health_ = 10
health_ = 10;
hspeed_ = 0;
vspeed_ = 0;
attack_cooldown_ = room_speed * 3;
attack_speed_ = -7 * sign(x);

//States
STANDARD = 0;
ENRAGED = 1;
state = STANDARD;

alarm[0] = attack_cooldown_;

alarm[6] = room_speed * 0.5;