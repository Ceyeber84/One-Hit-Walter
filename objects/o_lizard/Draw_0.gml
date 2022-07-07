/// @description Face Towards Walter

if instance_exists(o_walter) {
	var flip = sign(x-o_walter.x);
} else {
	var flip = 1;
}

draw_sprite_ext(s_lizard,image_index,x,y,flip,image_yscale,image_angle,image_blend,image_alpha);