/// @description JUMP

// Collisions

vspeed_ += gravity_;

y += vspeed_;

if y >= 680 {
	state = LURK;
	alarm[0] = jump_cd;
	vspeed_ = 0;
}