/// @description Draw the Gun

// Draw player

var flipped = 1 + (mouse_x <= x) * -2;
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left)

if hinput == 0 && vspeed_ >= 0 {
	draw_sprite_ext(s_walter_idle, image_index, x, y, flipped, image_yscale, 0, image_blend, image_alpha);
} else {
	draw_sprite_ext(s_walter_moving, image_index, x, y, flipped, image_yscale, 0, image_blend, image_alpha);	
}

// Draw the gun

var dir = point_direction(x, y, mouse_x, mouse_y);
draw_sprite_ext(s_gun, 0, x+5 * flipped, y, image_xscale, flipped, dir, image_blend, image_alpha); 