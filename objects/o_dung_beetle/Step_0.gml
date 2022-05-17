/// @description movement
// Inherit the parent event
event_inherited();

//Death
if health_ <= 0 {
	instance_destroy();	
}

// Gravity

if !place_meeting(x, y + 1, o_wall) {
	vspeed_ += gravity_;
}

// Collision

Collision();

hspeed_ = lerp(hspeed_, 4 * sign(hspeed_), .2);

// Move
x += hspeed_;
y += vspeed_;