/// @description movement
event_inherited();

// Death
if health_ <= 0 {
	instance_destroy();	
}

// Move
x += hspeed_;
y += vspeed_;

// Collision
if place_meeting(x + 1, y, o_wall) or place_meeting(x - 1, y, o_wall) {
	hspeed_ = 0
	vspeed_ = 0
}



// Glide
if alarm[0] <= 0 && instance_exists(o_walter) && place_meeting(x + 1, y, o_wall) or alarm[0] <= 0 && instance_exists(o_walter) && place_meeting(x - 1, y, o_wall) {
	var dir = point_direction(x, y, o_walter.x, o_walter.y);
	hspeed_ = lengthdir_x(speed_, dir)
	vspeed_ = lengthdir_y(speed_, dir)
	alarm[0] = glide_cooldown_
}
if place_meeting(x, y + 16, o_wall) {
	vspeed_ = -0.1
}

if place_meeting(x, y - 16, o_wall) {
	vspeed_ = 0.1
}

Collision()