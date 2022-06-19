/// @description Attack
if x >= room_width * 2 || x <= -room_width {
	hspeed_ = 0;
	alarm[0] = attack_cooldown_;
	state = WAITING;
} else {
	hspeed_ = attack_speed_;	
}


/*
if x < room_width*1.5 {
	hspeed_ = attack_speed_;
}
else {
	hspeed_ = 0;
	alarm[0] = attack_cooldown_;
	state = WAITING;
}
