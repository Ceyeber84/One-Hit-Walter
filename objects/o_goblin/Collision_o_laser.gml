/// @description Insert description here
// You can write your code in this editor
if distance_to_object(o_wall) > 1 {
if alarm[11] <= 0 {
	acc_ratio = (sign(vspeed_) * vspeed_) / (sign(hspeed_) * hspeed_);
}

// Inherit the parent event
event_inherited();

// reset alarm
alarm[1] = room_speed / 2;
}