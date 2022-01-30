function Collision(){
// X

if place_meeting(x + hspeed_, y, o_wall) {
	while !place_meeting(x + sign(hspeed_), y, o_wall) {
		x += sign(hspeed_);
	}
	hspeed_ = -hspeed_;
}

// Y

if place_meeting(x, y + vspeed_, o_wall) {
	while !place_meeting(x, y + sign(vspeed_), o_wall) {
		y += sign(vspeed_);
	}
	vspeed_ = -vspeed_;
}
}