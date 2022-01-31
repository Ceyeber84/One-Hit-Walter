/// @description Attack
//Movement
var dir = point_direction(x, y, direction_x, direction_y);

hspeed_ += hacceleration_ * lengthdir_x(max_speed_, dir);
hspeed_ = clamp(hspeed_, -max_speed_, max_speed_);

vspeed_ += vacceleration_ * lengthdir_y(max_speed_, dir);
vspeed_ = lengthdir_y(max_speed_, dir);

//Switch to Slow
if hspeed_ < 0.01 && vspeed_ < 0.01 {
	state = SLOW;	
}