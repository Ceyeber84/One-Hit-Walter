/// @description Slow
if instance_exists(o_walter) {
	//Find new player Coords
	variable_instance_set(self, "direction_x", o_walter.x);
	variable_instance_set(self, "direction_y", o_walter.y);

	var dir = point_direction(x, y, direction_x, direction_y);

	hspeed_ = 0.1 * sign(lengthdir_x(10, dir));
	vspeed_ = 0.1 * sign(lengthdir_y(10, dir));

	state = ATTACK;
}