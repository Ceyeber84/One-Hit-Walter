/// @description Movement

if alarm[0] <= 0 && distance_to_object(o_bullet) < 35 {
	state = DODGE;
}

event_user(state);
Collision_Bounce();

x += hspeed_;
y += vspeed_;

if health_ <= 0 {
	instance_destroy(self);
}