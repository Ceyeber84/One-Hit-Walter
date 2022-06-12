/// @description Initiate

event_inherited();
depth += 1;
direction_ = o_magma_delver_BOSS.direction_;
move_back = 0;
back_enabled = false;
destroy_enabled = false;
hit_delversolid = false;
mask_index = -1;
hspeed_ = lengthdir_x(5, direction_);
vspeed_ = lengthdir_y(5, direction_);
save_hspeed_ = hspeed_;
save_vspeed_ = vspeed_;
health_ = 0;

alarm[0] = 0;
alarm[1] = 0;