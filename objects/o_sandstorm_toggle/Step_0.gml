/// @description

//Switch Direction
if alarm[0] <= 0 {
	sandstorm_direction_ = sandstorm_direction_ * -1;
	alarm[0] = room_speed*5;
}

//Debug Messages
if alarm[1] <= 0 {
	show_debug_message(sandstorm_direction_);
	alarm[1] = room_speed;
}