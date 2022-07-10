/// @description variables

hspeed_ = 2.5;
vspeed_ = 0
inst = instance_create_depth(x + 8 * sign(hspeed_), y + 1, -5, o_dung);
dung_id = inst.id;
inst.creator_id = id;
alarm[0] = 0;

health_ = 10;
decide_dir = true;
gravity_ = 0.1;
move = true;
saved_speed_ = 0;
// STATES

ROLLING = 0;
SHOOTING = 1;
state = ROLLING;

event_inherited();