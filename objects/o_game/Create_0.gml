/// @description

//Abilities
global.laser_unlocked_ = false;
global.shield_unlocked_ = false;
global.battery_unlocked_ = false;
global.lives = 3;
global.checkpoint = 0;

//Sandstorm
sandstorm_active_ = false;
sandstorm_direction_ = 1;

instance_create_depth(room_width / 2, room_height / 8, 10, o_wind_indicator);

alarm[0] = room_speed * 5;
alarm[1] = room_speed * 1000;

audio_play_sound(so_musicwolf, 9, true);

// Keep track of music

global.campaign = 1;
current_room = a_title_screen;

//surface_resize(application_surface, room_width, room_height);