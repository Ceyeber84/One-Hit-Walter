/// @description Death Animation
var animscale = ((sprite_height + sprite_width)/2)/24
with instance_create_depth(x, y, 100, o_enemy_death) {
	image_xscale = animscale;
	image_yscale = animscale;
}