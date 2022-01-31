/// @description Slow
//Find new player Coords
variable_instance_set(self, "direction_x", o_walter.x);
variable_instance_set(self, "direction_y", o_walter.y);

hspeed_ = 0.1;
vspeed_ = 0.1;

if hspeed_ > 0.01 && vspeed_ > 0.01 {
	state = ATTACK;
}