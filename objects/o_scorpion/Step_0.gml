/// @description movement
hspeed_ = 5

// collision
if place_meeting(x + 1, y, o_wall) or place_meeting(x - 1, y, o_wall) {
hspeed_ = -5
}

// Gravity
if place_meeting(x, y+1, o_wall) {
	vspeed_ = 0
}
if !place_meeting(x, y + 1, o_wall) {
	vspeed_ += gravity_;
}

// Move
x += hspeed_;
y += vspeed_;