/// @description Draw Self
if hdir_ = 0 {
	var xscale = 1;	
} else {
	var xscale = hdir_;
}

if vdir_ = 0 {
	var yscale = 1;	
} else {
	var yscale = vdir_;
}

draw_sprite_ext(s_sandworm_BOSS, image_index, x, y, xscale, yscale, rotation, image_blend, image_alpha);