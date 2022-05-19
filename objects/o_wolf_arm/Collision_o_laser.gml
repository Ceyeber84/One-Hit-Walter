/// @description Deal Laser Damage

if i_frames_ = false && instance_exists(o_wolf_BOSS) {
	alarm[11] = room_speed * 1;
	o_wolf_BOSS.health_ -= 3;
	i_frames_ = true;
}