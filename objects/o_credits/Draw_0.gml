/// @description Hover Mouse
if position_meeting(mouse_x,mouse_y,self) {
	image_xscale = 4.5;
	image_yscale = 4.5;
} else {
	image_xscale = 4;
	image_yscale = 4;
}

draw_sprite_ext(s_credits,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);