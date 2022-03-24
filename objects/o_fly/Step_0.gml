/// @description Movement

if alarm[0] <= 0 && distance_to_object(o_bullet) < 35 && instance_exists(o_bullet) {
	state = DODGE;
	set_angle_ = false;
}

event_user(state);
Collision_Bounce();

x += hspeed_;
y += vspeed_;

if health_ <= 0 {
	instance_destroy(self);
}