/// @description Beat up Walter

event_inherited();

event_user(state);

if alarm[0] <= 0 {
	alarm[0] = shoot_cd;
	if instance_exists(o_walter) {
		bulletdir = point_direction(x, y, o_walter.x, o_walter.y);
	}
	instance_create_layer(x, y, "Instances", o_lava_bubble);
}

if health_ <= 0 {
	instance_destroy(self);
}

show_debug_message(health_);