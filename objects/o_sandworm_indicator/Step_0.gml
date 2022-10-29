/// @description Move
if instance_exists(o_sandworm_BOSS) {
	if place_meeting(x, y, o_sandworm_BOSS) {
		instance_destroy()	
	}
} else {
	instance_destroy(self)	
}
