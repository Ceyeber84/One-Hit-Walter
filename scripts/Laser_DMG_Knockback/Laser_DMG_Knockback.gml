function Laser_DMG_Knockback(knockback, iobject, hobject){
if iobject.i_frames_ = false {
	iobject.alarm[11] = room_speed * 1;
	hobject.health_ -= 3;
	iobject.i_frames_ = true;
	hobject.hspeed_ += (lengthdir_x(6.5, other.direction_) * knockback);
	hobject.vspeed_ += (lengthdir_y(6.5, other.direction_) * knockback);
}
}