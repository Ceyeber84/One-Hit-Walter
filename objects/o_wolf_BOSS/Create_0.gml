/// @description Initiate wolf

event_inherited();
randomise();

// Cooldowns
attack_cooldown_ = room_speed * 4.5;
warning_duration_ = room_speed * 1.5;
phase3triggered = false;

image_index = 0;
alarm[0] = attack_cooldown_;
alarm[1] = 0;
alarm[2] = 0;
alarm[3] = 0;
mask_index = -1;
image_xscale = 1.5;
image_yscale = 1.5;
depth = -5

//States

IDLE = 0;
ATTACK = 1;
ANGRY = 2;
state = IDLE;

pattern_start = 1;
pattern_end = 5;
health_ = 65;
max_health_ = health_;
choose_attack_ = true;
attack_value_ = 0;
spawn_enemy = -1;
global.enemy_counter = 0

instance_create_depth(room_width/2,room_height/10, -1000, o_bosshealthbar);