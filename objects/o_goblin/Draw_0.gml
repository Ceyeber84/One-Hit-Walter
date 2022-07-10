/// @description point forwards
var dir = point_direction(xprevious, yprevious, x, y);
var vflip = 1 + (xprevious > x) * -2;
draw_sprite_ext(s_goblin, 0, x, y, 1, vflip, dir, image_blend, image_alpha);