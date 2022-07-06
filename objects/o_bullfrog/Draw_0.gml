/// @description Flip
if hspeed_ > 0 {
	variable_instance_set(self, "facing_", -1)	;
}
if hspeed_ < 0 {
	variable_instance_set(self, "facing_", 1);
}
draw_sprite_ext(s_frog,image_index,x,y,facing_,image_yscale,image_angle,image_blend,image_alpha);