/// @description Movement & Attack

event_inherited();
event_user(state);
randomise();

//Movement 
x += hspeed_;
y += vspeed_;

image_angle = rotation;

if x > 0 and x < room_width {
	if y > 0 and y < room_height {
		variable_instance_set(self, "attacked_", true);	
	}
}

if health_ <= max_health_/2 {
	attack_cooldown_ = room_speed * 1.5;	
	attack_speed_ = 9;
}

if health_ <= 0 {
	instance_destroy()	
}

//Debug
/*
if alarm[6] <= 0 {
	show_debug_message("hspeed = " + string(hspeed_));
	show_debug_message("attacked = " + string(attacked_));
	show_debug_message("state = " + string(state));
	show_debug_message("x = " + string(x));
	show_debug_message("y = " + string(y));
	show_debug_message("hdir_ = " + string(hdir_));
	show_debug_message("vdir_ = " + string(vdir_));
	//show_debug_message(alarm[0]);
	alarm[6] = room_speed * 0.5;
}
*/