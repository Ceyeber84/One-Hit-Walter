/// @description Attack Indicator
draw_self()

if state = WAITING {
	if side == -1 {
		var xpos = 14;	
	} else {
		var xpos = room_width - 14;
	}
	
	draw_sprite(s_sandworm_indicator, sprite_index, xpos, y);
}