/// @description Movement, Damage and Effects

// Sandstorm Wind Effect
if instance_exists(o_game) && o_game.sandstorm_active_ = true {
	var wind = 0.2*o_game.sandstorm_direction_;
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

// Disable Abilities
if alarm[3] >= 0 {
	ability_disabled_ = true;	
} else {
	ability_disabled_ = false;	
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
vspeed_ += .3 * vacceleration_;
vspeed_ = clamp(vspeed_, -max_speed_ * slowed * power(.90, heaviness), max_speed_ * slowed * power(1.1, heaviness));
if vinput = 0 {
	vspeed_ = lerp(vspeed_, 0, .1);
	vspeed_ += .1 * power(1.1, heaviness);
}

// Slow

prev_slowed = slowed;

// Collisions

Collision_Bounce();

// Update X and Y

x += hspeed_;
y += vspeed_;

if alarm[1] <= 0 {
	iFrames = false;;
}

if health_ <= 0  && global.lives != 1{
	global.lives -= 1;
	audio_play_sound(so_walterdeath, 1, false);
	room_restart()
} else if health_ <= 0 {
	instance_create_depth(room_width/2, room_height/2, -1000, o_zzendscreen_returntomenu);
	audio_stop_all();
	audio_play_sound(so_walterdeath, 1, false);
	room_goto(a_title_screen);
	global.lives = 3;
	instance_destroy(self);
}

