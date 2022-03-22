/// @description Move the bullet

vspeed_ += gravity_;

x += hspeed_;
y += vspeed_;

if place_meeting(x + hspeed_, y, o_wall) or place_meeting(x, y + vspeed_, o_wall) {
	event_user(0);
}

if bounce_counter_ >= 4 {
	instance_destroy();
}

direction_ = point_direction(x, y, x + hspeed_, y + vspeed_);