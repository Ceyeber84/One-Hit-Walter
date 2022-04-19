/// @description States

//I-Frames
event_inherited();

//States
event_user(state);

if alarm[0] = 1 && instance_exists(o_walter) {
	variable_instance_set(self, "direction_", point_direction(x,y,o_walter.x,o_walter.y));
}

//Move
hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);

Collision_Bounce();
x += hspeed_;
y += vspeed_;

//Die
if health_ <= 0 {
	instance_destroy()	
}