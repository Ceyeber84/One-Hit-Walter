/// @description Initiate wolf

event_inherited();
randomise();

image_index = 0;
alarm[0] = room_speed * 4;
alarm[1] = 0;
alarm[2] = 0;
mask_index = -1;

//States

IDLE = 0;
ATTACK = 1;
ANGRY = 2;
state = IDLE;

pattern_start = 1;
pattern_end = 5;
health_ = 4;
max_health_ = health_;
choose_attack_ = true;
attack_value_ = 0;