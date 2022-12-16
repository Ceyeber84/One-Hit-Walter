/// @description

//Abilities
global.laser_unlocked_ = false;
global.shield_unlocked_ = false;
global.battery_unlocked_ = false;

global.ability1 = "None";
global.ability2 = "None";
global.ability3 = "None";

global.campaign_unlocked_2 = false;
global.campaign_unlocked_3 = false;
global.campaign_unlocked_4 = false;

global.lives = 3;
global.walters = 3;

//Rooms
rooms_noncombat = ds_list_create();
ds_list_add(rooms_noncombat, a_title_screen, a_credits, a_campaignselect, b_abilityselect1, c_tutorial, b_abilityselect2, b_abilityselect3, d_returntomenu, zz_deathscreen, zz_endscreen);

//Abilities
abilities_activated = false;

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
global.Font = font_add_sprite_ext(s_font, "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz'!. ", true, 1);
draw_set_font(global.Font);
draw_set_halign(fa_center);