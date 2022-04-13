/// @description Revolve around Walter

if instance_exists(o_walter) {
	dir += orbit_speed_;
	x= o_walter.x+lengthdir_x(distance,dir);
	y= o_walter.y+lengthdir_y(distance,dir);
} else {
	instance_destroy()	
}