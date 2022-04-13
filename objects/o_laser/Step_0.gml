/// @description Move the Laser

if place_meeting(x, y, o_wall) {
	instance_destroy(self);
}

x += hspeed_;
y += vspeed_;