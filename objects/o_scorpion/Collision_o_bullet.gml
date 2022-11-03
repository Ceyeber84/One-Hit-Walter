/// @description take damage

event_inherited();

health_ -= 1;
instance_destroy(other);