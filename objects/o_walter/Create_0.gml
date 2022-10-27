/// @description Create Variables
//Movement
hspeed_ = 0;
vspeed_ = 0;
vacceleration_ = 0;
hacceleration_ = 0;
battery_acc_ = 1;
max_speed_ = 3;
iFrames = false;
slowed = 1;
prev_slowed = 1;
heaviness = 0;
ability_disabled_ = false;

depth = -200;

//Bullet
bullet_hspeed_ = 0;
bullet_vspeed_ = 0;
bullet_cooldown_ = room_speed / 2;
slow_cd = room_speed * 2.5;
alarm[0] = bullet_cooldown_;
alarm[1] = 0;
alarm[2] = slow_cd;
alarm[3] = 0;

// Controls
keyboard_set_map(vk_space, vk_up);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

//Gameplay
health_ = 1000; // Health will become 1 later
