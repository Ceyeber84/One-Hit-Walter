/// @description Movement

if dir = 0 && move = true {
	vspeed_ = -10;
}

if dir = 0 && y = 20 {
	if move = true {
		alarm[0] = room_speed * 1.4;
	}
	move = false;
	vspeed_ = 0;
}

if alarm[0] <= 0 and move = false {
	instance_destroy(self);
}

x += hspeed_;
y += vspeed_;