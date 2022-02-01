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
Collision_Push();
if !place_meeting(x, y, o_swallow) {
	hspeed_push_ = lerp(hspeed_push_, 0, .1);
	vspeed_push_ = lerp(vspeed_push_, 0, .1);
}

//Health and Death
if health_ <= 0 {
	instance_destroy();	
}