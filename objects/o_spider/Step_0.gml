/// @description Movement & place webs

event_inherited();
Collision_Bounce();

// Decide direction

if hspeed_ != 0 && vspeed_ != 0 {
	direction_ = arctan(-vspeed_ / hspeed_) * (180 / pi);
	if hspeed_ < 0 {
		direction_ = direction_ + 180;
	}
} else if hspeed_ = 0 && vspeed_ >= 0 {
	direction_ = 270;
} else if hspeed_ = 0 && vspeed_ < 0 {
	direction_ = 90;
} else if vspeed_ = 0 && hspeed_ >= 0 {
	direction_ = 0;
} else {
	direction_ = 180;
}

image_angle = direction_;

if alarm[0] <= 0 {
	alarm[0] = web_cd;
	instance_create_layer(x, y, "Instances", o_web);
}

if health_ <= 0 {
	instance_destroy();
}

x += hspeed_;
y += vspeed_;