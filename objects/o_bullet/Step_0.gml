/// @description Move the bullet

vspeed_ += gravity_;

x += hspeed_;
y += vspeed_;

if bounce_counter_ >= 3 {
	instance_destroy();
}