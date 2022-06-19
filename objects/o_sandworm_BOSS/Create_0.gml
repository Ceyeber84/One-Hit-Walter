/// @description Initiate Sandworm
event_inherited();

max_health_ = 10
health_ = 10;
hspeed_ = 0;
vspeed_ = 0;

attack_cooldown_ = room_speed * 3;
side = -1;
attack_speed_ = -7 * side;


//States
WAITING = 0;
ATTACK = 1;
ENRAGED = 2;
state = WAITING;

alarm[0] = attack_cooldown_;

alarm[6] = room_speed * 0.5;