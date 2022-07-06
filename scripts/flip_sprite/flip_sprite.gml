function flip_sprite(hspeed_,sprite){

if hspeed_ > 0 {
	var flip = -1	
} else if hspeed_ < 0{
	var flip = 1	
} else {
	//stay the same
}

draw_sprite_ext(sprite,image_index,x,y,flip,image_yscale,image_angle,image_blend,image_alpha);
}