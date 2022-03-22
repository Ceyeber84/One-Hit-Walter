/// @description Hover

// Hover horizontally

if hspeed_ >= turn_speed_ or hspeed_ <= -turn_speed_ {
	turn_x = (hspeed_ >= turn_speed_) - (hspeed_ <= -turn_speed_);
}
hspeed_ -= .1 * turn_x;

// Hover vertically

if vspeed_ >= turn_speed_ or vspeed_ <= -turn_speed_ {
	turn_y = (vspeed_ <= -turn_speed_) - (vspeed_ >= turn_speed_);
}
vspeed_ += .1 * turn_y;