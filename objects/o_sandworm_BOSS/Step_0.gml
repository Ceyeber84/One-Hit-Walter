/// @description Movement & Attack

event_inherited();
event_user(state);

//Movement 
x += hspeed_;
y += vspeed_;

if x > 0 and x < room_width {
	variable_instance_set(self, "attacked_", true);	
}

//Debug
/*
if alarm[6] <= 0 {
	show_debug_message("hspeed = " + string(hspeed_));
	show_debug_message("attacked = " + string(attacked_));
	show_debug_message("state = " + string(state));
	show_debug_message("side = " + string(side));
	show_debug_message(alarm[0]);
	alarm[6] = room_speed * 0.5;
} */