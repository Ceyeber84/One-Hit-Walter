/// @description States and Collision
//Check Player Position
if instance_exists(o_walter) {
	variable_instance_set(self, "direction_x", o_walter.x);
	variable_instance_set(self, "direction_y", o_walter.y);
}

x += hspeed_;
y += vspeed_;

//States and Collision
event_user(state);
Collision();

//Health and Death
if health_ <= 0 {
instance_destroy();	
}