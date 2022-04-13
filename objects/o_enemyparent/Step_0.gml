/// @description Enemy general

if i_frames_ = true && alarm[11] <= 0 {
	alarm[11] = room_speed;
	maintain_health_ = health_;
}
if alarm[11] <= 0 {
	i_frames_ = false;
}

if i_frames_ = true {
	health_ = maintain_health_;
}