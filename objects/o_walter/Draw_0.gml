/// @description Draw the Gun

// Draw player

draw_self();

// Draw the gun

var dir = point_direction(x, y, mouse_x, mouse_y);
draw_sprite_ext(s_gun, 0, x, y, image_xscale, image_yscale, dir, image_blend, image_alpha); 
s_gun.depth = -2;