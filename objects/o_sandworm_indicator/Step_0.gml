/// @description Move

if instance_exists(o_sandworm_BOSS) {
	if o_sandworm_BOSS.state = WAITING {
		if o_sandworm_BOSS.side == -1 {
			var xpos = 16;	
		} else {
			var xpos = room_width - 16;
		}
		
		x = xpos;
		y = o_sandworm_BOSS.y;
	} else {
		instance_destroy(self);	
	}
} else {
	instance_destroy(self);	
}