/// @description Point towards player
if instance_exists(o_walter) {
	var dir = point_direction(x, y, o_walter.x, o_walter.y);

	//Flip when upside-down
	var vflip = 2 * (o_walter.x > x) - 1
	draw_sprite_ext(s_swallow, 0, x, y, 1, vflip, dir, image_blend, image_alpha);
}