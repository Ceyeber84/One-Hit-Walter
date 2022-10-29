/// @description Point towards player

var dir = point_direction(xprevious, yprevious, x, y);

//Flip when upside-down
var vflip = 1 + (xprevious > x) * -2;
draw_sprite_ext(s_sandworm_minion, 0, x, y, 1, vflip, dir, image_blend, image_alpha);