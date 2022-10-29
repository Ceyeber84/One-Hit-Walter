/// @description Soft Collide

var dir = point_direction(other.x, other.y, x, y);

hspeed_push_ += lengthdir_x(0.01, dir);
vspeed_push_ += lengthdir_y(0.01, dir);
