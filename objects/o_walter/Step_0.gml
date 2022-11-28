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
hspeed_ = clamp(hspeed_, -max_speed_ * slowed - (o_game.sandstorm_direction_), max_speed_ * slowed + (o_game.sandstorm_direction_));
if hinput = 0 {
	hspeed_ = lerp(hspeed_, 0, .1);
}

// Update vspeed_

var vinput = keyboard_check(vk_down) - keyboard_check(vk_up)
vacceleration_ = vinput * battery_acc_;
vspeed_ += .3 * vacceleration_;
vspeed_ = clamp(vspeed_, -max_speed_ * slowed * power(.95, heaviness), max_speed_ * slowed * power(1.15, heaviness));
if vinput = 0 {
	vspeed_ = lerp(vspeed_, 0, .1);
	vspeed_ += .1 * power(1.1, heaviness);
}

// Slow

prev_slowed = slowed;

// Collisions

if place_meeting(x, y + vspeed_, o_lava) {
	health_ -= 1;
}
Collision_Bounce();

// Update X and Y
x += hspeed_;
y += vspeed_;

//Damage and Death
if alarm[1] <= 0 {
	iFrames = false;;
}

if health_ <= 0  && global.lives != 1 {
	global.lives -= 1;
	audio_play_sound(so_walterdeath, 1, false);
	o_game.abilities_activated = false;
	room_restart()
} else if health_ <= 0 && global.walters = 1 {
	instance_create_depth(room_width/2, room_height/2, -1000, o_zzendscreen_returntomenu);
	audio_stop_all();
	health_ = 1;
	global.lives = 3;
	global.walters = 0;
	o_game.abilities_activated = false;
	room_goto(zz_deathscreen);
	instance_destroy(self);
} else if health_ <= 0 && global.walters != 1 {
	audio_play_sound(so_walterdeath, 1, false);
	o_game.abilities_activated = false;
	room_goto(global.saveroom);
	global.lives = 3;
	global.walters -= 1;
	instance_destroy(self);
}