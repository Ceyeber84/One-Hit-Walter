/// @description Initiate wolf

randomise();

image_index = 0;
alarm[0] = room_speed * 4;
alarm[1] = 0;
mask_index = -1;

//States

IDLE = 0;
ATTACK = 1;
state = IDLE;

health_ = 50;
choose_attack_ = true;
attack_value_ = 0;