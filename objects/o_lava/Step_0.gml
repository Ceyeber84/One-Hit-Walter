/// @description Save Waltuh

if instance_exists(o_walter) {
	if o_walter.y > (y + 10) {
		o_walter.health_ -= 1;
	}
}