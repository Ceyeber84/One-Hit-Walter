/// @description Move toward Walter

event_inherited();

if hit_delversolid = true && back_enabled = false {
	hspeed_ = 0;
	vspeed_ = 0;
	alarm[1] = room_speed;
	back_enabled = true;
	hit_delversolid = false;
}

if hspeed_ != 0 && vspeed_ != 0 {
	move_back += 1;
}

if back_enabled = true && alarm[1] <= 0 {
	hspeed_ = -save_hspeed_;
	vspeed_ = -save_vspeed_;
	alarm[0] = move_back;
	destroy_enabled = true;
}

if destroy_enabled = true && alarm[0] <= 0 {
	instance_destroy(self);
}

x += hspeed_;
y += vspeed_;

// HITBOXES 25 / 600

if !instance_exists(o_sensor) {
	instance_create_depth(0, 0, -10, o_sensor);
}

o_sensor.x = x;
o_sensor.y = y;
o_sensor.image_angle = image_angle;
o_sensor.image_xscale = 25;
o_sensor.image_yscale = 600 / sprite_get_height(s_sensor);

with (o_sensor) {
	if instance_exists(o_walter) {
		if place_meeting(x, y, o_walter) && o_walter.iFrames = false {
			o_walter.health_ -= 1;
			o_walter.alarm[1] = room_speed;
			o_walter.iFrames = true;
		}
		
		var bullet = instance_place(x, y, o_bullet);
		if place_meeting(x, y, bullet) && instance_exists(o_magma_delver_BOSS) {
			o_magma_delver_BOSS.health_ -= 1;
			instance_destroy(bullet);
		}
		
		var laser = instance_place(x, y, o_laser);
		if place_meeting(x, y, laser) && instance_exists(o_magma_delver_BOSS) {
			Laser_DMG_Knockback(0, o_magma_delver_BOSS, o_magma_delver_BOSS);
		}
	}

	if place_meeting(x, y, o_delversolid) {
		o_magma_tendril.hit_delversolid = true;
	}
}