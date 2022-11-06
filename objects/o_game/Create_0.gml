/// @description

//Abilities
global.laser_unlocked_ = false;
global.shield_unlocked_ = false;
global.battery_unlocked_ = false;
global.lives = 3;
global.walters = 3;

//Sandstorm
sandstorm_active_ = false;
sandstorm_direction_ = 1;
indicator_blink_ = false;
instance_create_depth(room_width / 2, room_height / 8, 10, o_wind_indicator);

alarm[0] = room_speed * 8;
alarm[1] = room_speed * 1000;

audio_play_sound(so_musicwolf, 9, true);

// Keep track of music
global.campaign = 1;
current_room = a_title_screen;

//Create Font
global.Font = font_add_sprite_ext(s_font, "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz ", true, 1);
draw_set_font(global.Font);