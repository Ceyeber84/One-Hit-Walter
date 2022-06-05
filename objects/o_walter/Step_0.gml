/// @description Movement and Damage

// Sandstorm Wind Effect
if instance_exists(o_sandstorm_toggle) && o_sandstorm_toggle.sandstorm_active_ = true {
	var wind = 0.2*o_sandstorm_toggle.sandstorm_direction_;
} else {
	var wind = 0;
}

// Slow Effect
if prev_slowed != slowed {
	alarm[2] = slow_cd;
}

if alarm[2] <= 0 {
	slowed = 1;
}

// Update hspeed_
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left)
hacceleration_ = hinput * battery_acc_;
hspeed_ += .3 * hacceleration_ + wind;
hspeed_ = clamp(hspeed_, -max_speed_ * slowed + wind, max_speed_ * slowed + wind);
if hinput = 0 {
	hspeed_ = lerp(hspeed_, 0, .1);
}

// Update vspeed_

var vinput = keyboard_check(vk_down) - keyboard_check(vk_up)
vacceleration_ = vinput * battery_acc_;
vspeed_ += .3 * vacceleration_ / heaviness;
vspeed_ = clamp(vspeed_, -max_speed_ * slowed, max_speed_ * slowed);
if vinput = 0 {
	vspeed_ = lerp(vspeed_, 0, .1);
	vspeed_ += .1 * heaviness;
}

// Slow

prev_slowed = slowed;

// Collisions

Collision_Bounce();

// Update X and Y

x += hspeed_;
y += vspeed_;

if alarm[1] <= 0 {
	iFrames = false;
}

if health_ <= 0 {
instance_destroy();	
}