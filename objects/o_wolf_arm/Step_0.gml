/// @description Movement

event_inherited();

if !instance_exists(o_wolf_BOSS) {
	instance_destroy();	
}

// Set up Sensor

if !instance_exists(o_sensor) {
	instance_create_depth(0, 0, -10, o_sensor);
}

o_sensor.x = x;
o_sensor.y = y;
o_sensor.image_angle = image_angle;
o_sensor.image_xscale = 100;
o_sensor.image_yscale = 620 / sprite_get_height(s_sensor);
with (o_sensor) {
	if instance_exists(o_walter) {
		if place_meeting(x, y, o_walter) && o_walter.iFrames = false {
			o_walter.health_ -= 1;
			o_walter.alarm[1] = room_speed;
			o_walter.iFrames = true;
		}
		var bullet = instance_place(x, y, o_bullet);
			if place_meeting(x, y, bullet) {
			o_wolf_BOSS.health_ -= 1;
			instance_destroy(bullet);
		}
	}
}

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