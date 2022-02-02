/// @description Movement

// Check if on wall

var on_wall = place_meeting(x + 1, y, o_wall) or place_meeting(x - 1, y, o_wall);

// Jump

if alarm[0] <= 0 {
	state = JUMPING;
}

event_user(state);

// Gravity

if !place_meeting(x, y + 1, o_wall) {
	vspeed_ += gravity_;
}

if place_meeting(x, y + 1, o_wall) and state = NOT_JUMPING {
	hspeed_ = 0;
}

// Limit speed

hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
vspeed_ = clamp(vspeed_, -max_vspeed_, max_vspeed_);

Collision();
// Latch onto wall

if on_wall {
	vspeed_ = 0;
}

x += hspeed_;
y += vspeed_;

// Round x and y values up or down

if place_meeting(x + hspeed_, y, o_wall) or place_meeting(x, y + vspeed_, o_wall) {
	x =	floor(x) * (hspeed_ <= 0) + ceil(x) * (hspeed_ > 0);
	y = floor(y) * (vspeed_ <= 0) + ceil(y) * (vspeed_ > 0);
}

state = NOT_JUMPING;

if health_ <= 0 {
	instance_destroy();
}