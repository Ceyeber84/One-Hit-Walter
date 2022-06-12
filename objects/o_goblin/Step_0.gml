/// @description movement

event_inherited();

// Death
if health_ <= 0 {
	instance_destroy();	
}

// Collision
if place_meeting(x + 1, y, o_wall) or place_meeting(x - 1, y, o_wall) {
	hspeed_ = 0
	vspeed_ = 0
}

// Stop

if distance_to_object(o_wall) <= 20 {
	hspeed_ = 0;
	vspeed_ = 0;
}

// Glide
if instance_exists(o_walter) && distance_to_object(o_wall) <= 20 && alarm[0] <= 0 {
	var dir = point_direction(x, y, o_walter.x, o_walter.y);
	hspeed_ = lengthdir_x(speed_, dir);
	vspeed_ = lengthdir_y(speed_, dir);
	alarm[0] = glide_cd;
}

Collision();

// Move
x += hspeed_;
y += vspeed_;