/// @description Draw the Gun

// Draw player

var flipped = 1 + (mouse_x <= x) * -2;
draw_sprite_ext(s_walter, image_index, x, y, xscale_ * flipped, yscale_, 0, image_blend, image_alpha);

// Draw the gun

var dir = point_direction(x, y, mouse_x, mouse_y);
draw_sprite_ext(s_gun, 0, x - 7 * flipped, y, image_xscale, flipped, dir, image_blend, image_alpha); 