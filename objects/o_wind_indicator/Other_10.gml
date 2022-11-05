/// @description Don't Blink
if instance_exists(o_game) {
	if o_game.sandstorm_active_ = true {
		if o_game.indicator_blink_ = true {
			alarm[0] = blink_interval_;
			state = BLINK;	
		}
	}
}