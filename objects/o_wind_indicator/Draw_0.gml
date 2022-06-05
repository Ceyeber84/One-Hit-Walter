/// @description
if instance_exists(o_sandstorm_toggle) {
	draw_sprite_ext(s_wind_indicator, image_index, x, y, o_sandstorm_toggle.sandstorm_direction_, image_yscale, image_angle, image_blend, image_alpha);
} else {
	instance_destroy();	
}