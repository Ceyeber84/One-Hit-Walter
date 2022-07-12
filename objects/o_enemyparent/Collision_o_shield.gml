/// @description Shield Knockback
// X

if place_meeting(x + hspeed_, y, o_shield) && alarm[10] <= 0 {
	while !place_meeting(x + sign(hspeed_), y, o_shield) {
		x += sign(hspeed_);
	}
	hspeed_ = -hspeed_;
	alarm[10] = room_speed
}

// Y

if place_meeting(x, y + vspeed_, o_shield) && alarm[10] <= 0 {
	while !place_meeting(x, y + sign(vspeed_), o_shield) {
		y += sign(vspeed_);
	}
	vspeed_ = -vspeed_;
	alarm[10] = room_speed
}