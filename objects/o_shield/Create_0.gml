/// @description Initiate
orbit_speed_ = 4;
dir = 20;
distance = 40;
depth = -10;
alarm[0] = 0;
if instance_exists(o_walter) {
	o_walter.bullet_cooldown_ = room_speed / 2.35;
}