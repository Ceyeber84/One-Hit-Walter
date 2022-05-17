/// @description Rotation
/*
if place_meeting(x,y-1,o_wall) {
	var vflip = 1;	
} else {
	var vflip = 0;	
} */

if hspeed_ < 0 {
	var hflip = -1;	
} else {
	var hflip = 1;
}

var dir = image_angle - 90*sign(vspeed_);
draw_sprite_ext(s_snake,image_index,x,y,hflip,image_yscale,dir,image_blend,image_alpha);