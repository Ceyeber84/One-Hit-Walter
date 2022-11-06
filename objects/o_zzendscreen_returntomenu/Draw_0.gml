/// @description Hover Mouse
//Draw Button
if position_meeting(mouse_x,mouse_y,self) {
	image_xscale = 1.2;
	image_yscale = 1.2;
} else {
	image_xscale = 1;
	image_yscale = 1;
}

draw_sprite_ext(s_zzendscreen_returntomenu, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);