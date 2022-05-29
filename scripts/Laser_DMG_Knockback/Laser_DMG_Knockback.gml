function Laser_DMG_Knockback(knockback){
if i_frames_ = false {
	alarm[11] = room_speed * 1;
	health_ -= 3;
	i_frames_ = true;
	hspeed_ += lengthdir_x(6.5, other.direction_) * knockback;
	vspeed_ += lengthdir_y(6.5, other.direction_) * knockback;
}
}