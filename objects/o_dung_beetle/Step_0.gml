/// @description movement
// Inherit the parent event
event_inherited();

//Death
if health_ <= 0 {
	instance_destroy();	
}

// Collision

if place_meeting(x + hspeed_, y, o_wall) {
	do
	{
		x += sign(hspeed_);
	} until (place_meeting(x + sign(hspeed_), y, o_wall))	
	hspeed_ = -hspeed_;
}

// Gravity

if !place_meeting(x, y + 1, o_wall) {
	vspeed_ += gravity_;
}
if place_meeting(x, y + vspeed_, o_wall) {
	while !place_meeting(x, y + sign(vspeed_), o_wall) {
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}

hspeed_ = lerp(hspeed_, 4 * sign(hspeed_), .2);

// Move
x += hspeed_;
y += vspeed_;