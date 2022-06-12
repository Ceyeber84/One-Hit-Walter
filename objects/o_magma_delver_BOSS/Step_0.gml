/// @description Beat up Walter

event_inherited();

event_user(state);

if health_ <= 0 {
	instance_destroy(self);
}