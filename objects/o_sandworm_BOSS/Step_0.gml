/// @description Movement & Attack

//I-Frames
event_inherited();

//Movement
if instance_exists(o_walter) && state = STANDARD{
	if alarm[0] > 0{
		y = o_walter.y;
	}
	
	if alarm[0] <= 0 {
		hspeed_ = attack_speed_;	
	}
	
	if alarm[0] <= 0 && x >= room_width*1.7 && sign(hspeed_) != -1{
		hspeed_ = 0;
		alarm[0] = attack_cooldown_;
	}
}


x += hspeed_;
y += vspeed_;

//Debug
if alarm[6] <= 0 {
	show_debug_message(hspeed_);
	show_debug_message(alarm[0]);
	alarm[6] = room_speed * 0.5;
}