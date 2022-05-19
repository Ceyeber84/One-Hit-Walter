/// @description Deal Laser Damage

if i_frames_ = false && image_index = 1 {
	alarm[11] = room_speed * 1;
	health_ -= 3;
	i_frames_ = true;
}