function Laser_DMG_Knockback(){
if i_frames_ = false {
	health_ -= 1
	i_frames_ = true;
	hspeed_ += lengthdir_x(5, other.direction_);
	vspeed_ += lengthdir_y(5, other.direction_);
}
}