/// @description ATTACKING

if instance_exists(o_walter) && alarm[1] <= 0 {
	alarm[1] = tendril_cd;
	var dir = point_direction(x, y, o_walter.x, o_walter.y);
	direction_ = dir;
	instance_create_layer(x, y, "Instances", o_magma_tendril);
	o_magma_tendril.image_angle = dir - 90;
}

state = IDLE;