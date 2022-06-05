/// @description Step

event_inherited();

if health_ <= 0 {
	instance_destroy(self);
}

event_user(state);
