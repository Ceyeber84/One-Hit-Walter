/// @description Movement & Attack

event_inherited();
event_user(state);

//Movement 
/*
if x > room_width*1.45 {
	variable_instance_set(self, "side", 1);
}
if x < -room_width*0.65 {
	variable_instance_set(self, "side", -1);
} */
	
	/*
	if alarm[0] <= 0 && x <= room_width*1.5{
		hspeed_ = attack_speed_ * -side;
	}
	
	if x >= room_width*1.5 && alarm[0] <= 15{
		alarm[0] = attack_cooldown_;
	}*/



x += hspeed_;
y += vspeed_;

//Debug
if alarm[6] <= 0 {
	show_debug_message(hspeed_);
	show_debug_message(alarm[0]);
	alarm[6] = room_speed * 0.5;
}