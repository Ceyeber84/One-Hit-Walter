/// @description Jumping

if instance_exists(o_walter) {
	var dir = point_direction(x, y, o_walter.x, o_walter.y);
	hspeed_ = 0.01 * lengthdir_x(distance_to_point(o_walter.x, o_walter.y), dir);
	vspeed_ = 0.03 * lengthdir_y(distance_to_point(o_walter.x, o_walter.y), dir);
		
	// Balance out jump height
		
	if o_walter.y > (room_height / 3) {
		vspeed_ -= 2
	}
	if (160 <= dir) or (dir <= 20) {
		vspeed_ = -3;
		hspeed_ = hspeed_ * 1.5;
	}
		
	// Randomization
		
	vspeed_ += random_range(-1, 1);
	hspeed_ += random_range(-1, 1);
	alarm[0] = room_speed * 4;
}