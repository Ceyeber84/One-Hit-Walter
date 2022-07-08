/// @description variables

hspeed_ = 2.5;
vspeed_ = 0
instance_create_depth(x + 8 * sign(hspeed_), y + 1, -5, o_dung);
alarm[0] = 0;

health_ = 10;
decide_dir = true;
gravity_ = 0.1;
move = true;
saved_speed_ = 0;
dung_id = 0;
// STATES

ROLLING = 0;
SHOOTING = 1;
state = ROLLING;

event_inherited();