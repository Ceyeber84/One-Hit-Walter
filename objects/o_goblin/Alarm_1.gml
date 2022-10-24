/// @description laser hit
laser_recovery = true;
acc_ratio = (sign(vspeed_) * vspeed_) / (sign(hspeed_) * hspeed_);
yacc = xacc * acc_ratio;
current_hspeed_ = hspeed_;
current_vspeed_ = vspeed_;