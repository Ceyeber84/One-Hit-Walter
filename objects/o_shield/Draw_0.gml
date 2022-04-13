/// @description Rotate
if instance_exists(o_walter) {
	var dir = point_direction(o_walter.x, o_walter.y, x, y) - 90;
	draw_sprite_ext(s_shield, 0, x, y, image_xscale*1.5, image_yscale*1.5, dir, -1, image_alpha);
}