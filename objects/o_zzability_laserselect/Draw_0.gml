/// @description Hover Mouse
if position_meeting(mouse_x,mouse_y,self) {
	image_xscale = 3.5;
	image_yscale = 3.5;
} else {
	image_xscale = 3;
	image_yscale = 3;
}

draw_sprite_ext(s_zzability_lasericon,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);