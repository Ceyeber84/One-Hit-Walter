/// @description Create Variables
//Movement
hspeed_ = 0;
vspeed_ = 0;
vacceleration_ = 0;
hacceleration_ = 0;
max_speed_ = 3;

//Bullet
bullet_hspeed_ = 0;
bullet_vspeed_ = 0;
bullet_cooldown_ = room_speed / 4;
alarm[0] = bullet_cooldown_;

// Controls
keyboard_set_map(vk_space, vk_up);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

// Draw
xscale_ = image_xscale;
yscale_ = image_yscale;

//Gameplay
health_ = 3; // Health will become 1 later
