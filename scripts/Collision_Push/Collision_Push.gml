function Collision_Push(){
// X

if place_meeting(x + hspeed_push_, y, other) {
	while !place_meeting(x + sign(hspeed_push_), y, other) {
		x += sign(hspeed_push_);
	}
	hspeed_push_ = 0;
}
x += hspeed_push_;

// Y

if place_meeting(x, y + vspeed_push_, other) {
	while !place_meeting(x, y + sign(vspeed_push_), other) {
		y += sign(vspeed_push_);
	}
	vspeed_push_ = 0;
}
y += vspeed_push_;
}