/// @description Attack
//Movement
var dir = point_direction(x, y, direction_x, direction_y);
var left_of_player = 270 <= dir && dir <= 90;
var above_player = 0 < dir < 180;

if !left_of_player {
	hspeed_ += hacceleration_ * lengthdir_x(max_speed_, dir);
} else {
	hspeed_ += hacceleration_ * -lengthdir_x(max_speed_, dir);
}
hspeed_ = clamp(hspeed_, -max_speed_, max_speed_);

if !above_player {
	vspeed_ += vacceleration_ * lengthdir_y(max_speed_, dir);
} else {
	vspeed_ += vacceleration_ * -lengthdir_y(max_speed_, dir);
}

vspeed_ = lengthdir_y(max_speed_, dir);

//Switch to Slow
if 0.1 < hspeed_ < -0.1 && 0.1 < vspeed_ < 0.1 {
	state = SLOW;	
}