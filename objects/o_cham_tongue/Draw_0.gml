/// @description Draw my man

draw_sprite_ext(o_cham_tongue, 0, x, y, image_xscale, yscale_, direction_, image_blend, image_alpha);

if remove_tongue_ = true {
	sprite_delete(o_cham_tongue);
	remove_tongue_ = false;
}
