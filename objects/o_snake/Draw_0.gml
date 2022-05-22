/// @description Rotation
if hspeed_ < 0 {
	var hflip = -1;	
} else {
	var hflip = 1;
}

if hspeed_ != 0 {
	var hitboxoffset = x + ((hflip-1)/2)*sprite_width;
} else if place_meeting(x-1,y,o_wall){
	var hitboxoffset = x-sprite_width+sprite_height;	
} else {
	var hitboxoffset = x;
}

var dir = image_angle - 90*sign(vspeed_);
draw_sprite_ext(s_snake,image_index,hitboxoffset,y,hflip,image_yscale,dir,image_blend,image_alpha);