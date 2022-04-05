/// @description Draw my man

draw_sprite_ext(s_cham_tongue, 0, x, y, image_xscale, yscale_, direction_, image_blend, image_alpha);
sprite_collision_mask(0, true, 1, 0, 0,0, 0, bboxkind_rectangular, 0);

if place_meeting(o_walter.x, o_walter.y, o_cham_tongue) {
	instance_destroy(self);
}
