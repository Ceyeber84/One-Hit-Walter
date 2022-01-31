/// @description Movement

// Update hspeed_

var hinput = keyboard_check(vk_right) - keyboard_check(vk_left)
hacceleration_ = hinput;
hspeed_ += .3 * hacceleration_;
hspeed_ = clamp(hspeed_, -max_speed_, max_speed_);
if hinput = 0 {
	hspeed_ = lerp(hspeed_, 0, .1);
}

// Update vspeed_

var vinput = keyboard_check(vk_down) - keyboard_check(vk_up)
vacceleration_ = vinput;
vspeed_ += .3 * vacceleration_;
vspeed_ = clamp(vspeed_, -max_speed_, max_speed_);
if vinput = 0 {
	vspeed_ = lerp(vspeed_, 0, .1);
	vspeed_ += .1;
}

// Collisions

Collision();

// Update X and Y

x += hspeed_;
y += vspeed_;