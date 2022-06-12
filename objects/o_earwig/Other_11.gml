/// @description JUMP

// Collisions

vspeed_ += gravity_;

y += vspeed_;

if y >= 680 {
	state = LURK;
	alarm[0] = jump_cd;
	vspeed_ = 0;
}

/*
Width 60, Height 180
When colliding with bullet, check bullets location.
If the distance from that location to 1 of 2 certain points,
it deals damage. Calculate the 2 points with:
A: distance_to_point(x, y - sprite_height / 2 + 5) <= 5;
B: distance_to_point(x, y + sprite_height / 2 - 5) <= 5;
*/