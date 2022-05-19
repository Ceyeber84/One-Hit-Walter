/// @description Step event

event_inherited();

if health_ <= .4 * max_health_ {
	state = ANGRY;
}
event_user(state);

if health_ <= 0 {
	instance_destroy(self);
}

if alarm[2] <= 0 {
	mask_index = -1;
	image_index = 0;
}