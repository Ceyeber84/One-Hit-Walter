/// @description Movement

if dir = 0 && move = true {
	vspeed_ = -10;
}

if dir = 0 && y = 20 {
	move = false;
	vspeed_ = 0;
	alarm[0] = room_speed;
}

if alarm[0] <= 0 && move = false {
	instance_destroy(self);
}

x += hspeed_;
y += vspeed_;