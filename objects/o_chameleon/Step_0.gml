/// @description Step

// Shoot tongue

if alarm[0] <= 0 {
	instance_create_depth(x, y, -9, o_cham_tongue);
	alarm[0] = room_speed * 5;
}

// Die

if health_ <= 0 {
	instance_destroy(self);
}