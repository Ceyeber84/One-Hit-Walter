/// @description variables

// Inherit the parent event
event_inherited();

hspeed_ = 5;
vspeed_ = .1;
speed_ = 6;
health_ = 15;
glide_cd = room_speed * 3;
alarm[0] = glide_cd;
alarm[1] = -1;
dir_ = 0

laser_recovery = false;
acc_ratio = 0;
xacc = 1;
yacc = 0;
saved_hspeed_ = 0;
saved_vspeed_ = 0;
current_hspeed_ = 0;
current_vspeed_ = 0;
good_h = false;
good_v = false;