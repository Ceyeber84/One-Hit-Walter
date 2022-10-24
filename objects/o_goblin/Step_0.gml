/// @description movement

event_inherited();

// Death
if health_ <= 0 {
	instance_destroy();	
}

// Collision
if place_meeting(x + 1, y, o_wall) or place_meeting(x - 1, y, o_wall) {
	vspeed_ = 0
}
if place_meeting(x, y - 1, o_wall) {
	hspeed_ = 0
}
if place_meeting(x, y + 10, o_wall) {
	vspeed_ = -vspeed_
}

// Round x and y values up or down

if place_meeting(x + hspeed_, y, o_wall) or place_meeting(x, y + vspeed_, o_wall) {
	x =	floor(x) * (hspeed_ <= 0) + ceil(x) * (hspeed_ > 0);
	y = floor(y) * (vspeed_ <= 0) + ceil(y) * (vspeed_ > 0);
}

// Glide
if instance_exists(o_walter) && distance_to_object(o_wall) <= 1 && alarm[0] <= 0 {
	var dir = point_direction(x, y, o_walter.x, o_walter.y);
	hspeed_ = lengthdir_x(speed_, dir);
	vspeed_ = lengthdir_y(speed_, dir);
	alarm[0] = glide_cd;
	dir_ = dir
}

if alarm[1] = 0 {
	hspeed_ = lengthdir_x(speed_, dir_);
	vspeed_ = lengthdir_y(speed_, dir_);
}

Collision();

// Move
x += hspeed_;
y += vspeed_;