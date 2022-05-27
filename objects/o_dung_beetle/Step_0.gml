/// @description movement
// Inherit the parent event
event_inherited();

// Gravity

if !place_meeting(x, y + 1, o_wall) {
	vspeed_ += gravity_;
} else {
	vspeed_ = 0;
}

// Collision

if place_meeting(x + hspeed_, y, o_wall) {
	while !place_meeting(x + 1, y, o_wall) {
		x += sign(hspeed_);
	}
	hspeed_ = -hspeed_;
}

// run state

event_user(state);

//Death
if health_ <= 0 {
	instance_destroy();	
}

// Move
x += hspeed_;
y += vspeed_;