/// @description Initiate wolf

event_inherited();
randomise();

// Cooldowns
attack_cooldown_ = room_speed * 6;
warning_duration_ = room_speed * 1.5;
phase3triggered = false;

image_index = 0;
alarm[0] = attack_cooldown_;
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
health_ = 50;
max_health_ = health_;
choose_attack_ = true;
attack_value_ = 0;

instance_create_depth(room_width/2,room_height/10, 0, o_bosshealthbar);