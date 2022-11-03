/// @description Take Damage

event_inherited();

health_ -= 1;
instance_destroy(other);