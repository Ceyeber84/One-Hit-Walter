/// @description

//Switch Sandstorm Direction
if alarm[0] <= 0 {
	sandstorm_direction_ = sandstorm_direction_ * -1;
	alarm[0] = room_speed*5;
}

//Next Room
if !instance_exists(o_enemyparent) {
	room_goto_next()	
}