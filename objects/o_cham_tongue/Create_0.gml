/// @description Initiate tongue

depth = -9;
yscale_ = 1;
if instance_exists(o_walter) {
	direction_ = point_direction(x, y, o_walter.x, o_walter.y) + 90;
}