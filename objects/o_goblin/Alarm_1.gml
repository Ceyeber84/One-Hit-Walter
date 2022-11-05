/// @description laser hit

if distance_to_object(o_wall) > 1 {
	laser_recovery = true;
	yacc = xacc * acc_ratio;
	current_hspeed_ = hspeed_;
	current_vspeed_ = vspeed_;
}