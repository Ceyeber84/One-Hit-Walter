/// @description take damage

event_inherited();

if i_frames_ = false {
	i_frames_ = true;
	health_ -= 1;
	instance_destroy(other);
}