/// @description movement


//Death
if health_ <= 0 {
	instance_destroy(self);	
}

// Gravity

if !place_meeting(x, y + 1, o_wall) {
	vspeed_ += gravity_;
}

// Collision Y

if place_meeting(x, y + vspeed_, o_wall) {
	while !place_meeting(x, y + sign(vspeed_), o_wall) {
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}

// Inherit the parent event

event_inherited();

// Move

if alarm[1] <= 0 {
	alarm[1] = hop_cooldown_;
	var movedir = irandom_range(0, 1);
	if movedir = 1 {
		hspeed_ = lengthdir_x(3, 135);
		vspeed_ = lengthdir_y(3, 135);
	} else {
		hspeed_ = lengthdir_x(3, 45);
		vspeed_ = lengthdir_y(3, 45);
	}
}

// Collision X

if place_meeting(x + hspeed_, y, o_wall) {
	while !place_meeting(x + sign(hspeed_), y, o_wall) {
		x += sign(hspeed_);
	}
	hspeed_ = -hspeed_;
}

if place_meeting(x, y + 1, o_wall) {
	hspeed_ = lerp(hspeed_, 0, .1);
	vspeed_ = lerp(vspeed_, 0, .1);
}

x += hspeed_;
y += vspeed_;
x = round(x);
y = round(y);

// Create a bullet
if alarm[0] <= 0 && instance_exists(o_walter) {
	var dir = point_direction(x, y, o_walter.x, o_walter.y);
	var x_offset = lengthdir_x(26, dir);
	var y_offset = lengthdir_y(26, dir);
	var bullet = instance_create_layer(x + x_offset, y + y_offset, "Instances", o_saliva);
	audio_play_sound(so_enemyshoot, 1, false);
	bullet.direction = dir
	alarm[0] = bullet_cooldown_ + random_range(-room_speed, room_speed);
}