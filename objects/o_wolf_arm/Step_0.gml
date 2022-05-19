/// @description Movement

event_inherited();

if move = true {
	if dir = 0 {
		vspeed_ = -10;
	} else if dir = 1 {
		hspeed_ = -10;
	} else if dir = 2 {
		hspeed_ = 10;
	}
}

if (dir = 0 && y = 20) or (dir = 1 && x = 20) or (dir = 2 && x = 620) {
	if move = true {
		alarm[0] = room_speed * 1.4;
	}
	move = false;
	vspeed_ = 0;
	hspeed_ = 0;
}

if alarm[0] <= 0 and move = false {
	instance_destroy(self);
}

x += hspeed_;
y += vspeed_;