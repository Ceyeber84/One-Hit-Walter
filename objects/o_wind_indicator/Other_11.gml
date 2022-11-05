/// @description Blink
if alarm[0] <= 0{
	visible = !visible;
	alarm[0] = blink_interval_;
}

if instance_exists(o_game) {
	if o_game.alarm[0] <= room_speed*0.5 {
		visible = true;	
		show_debug_message("Switch");
		show_debug_message("State =" + string(state));
		variable_instance_set(self, "state", 0);
	}
}