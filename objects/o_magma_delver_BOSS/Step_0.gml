/// @description Beat up Walter

event_inherited();

if health_ <= 0 {
	instance_destroy(self);
}