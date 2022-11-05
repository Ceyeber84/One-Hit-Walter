/// @description Blink
if alarm[0] <= 0{
	visible = !visible;
	alarm[0] = blink_interval_;
}

if instance_exists(o_game) {
	if o_game.sandstorm_active_ = true {
		if o_game.indicator_blink_ = false {
			visible = true;	
			state = DONT;
		} 
	} else {
		visible = true;
		state = DONT;	
	}
}