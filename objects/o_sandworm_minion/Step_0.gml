/// @description States and Collision
event_inherited();

if !instance_exists(o_sandworm_BOSS) {
	instance_destroy();	
}

//Check Player Position
if instance_exists(o_walter) {
	variable_instance_set(self, "direction_x", o_walter.x);
	variable_instance_set(self, "direction_y", o_walter.y);
}

if alarm[0] <= 0 {
	hitbyshield_ = false;
}

x += hspeed_;
y += vspeed_;

//States and Collision
event_user(state);
Collision_Bounce();
Collision_Push();
// Soft Collide
if !place_meeting(x, y, o_swallow) {
	hspeed_push_ = lerp(hspeed_push_, 0, .1);
	vspeed_push_ = lerp(vspeed_push_, 0, .1);
}

//Health and Death
if health_ <= 0 {
	if instance_exists(o_wolf_BOSS) {
	global.enemy_counter -= 1;
	}
	instance_destroy();	
}