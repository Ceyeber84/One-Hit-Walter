/// @description Move the laser

if instance_exists(o_walter) {
	if global.laser_unlocked_ = true{
		if mouse_check_button_pressed(mb_right) && alarm[0] <= 0 && o_walter.ability_disabled_ = false{
			alarm[0] = room_speed * cooldown_;
			var dir = point_direction(o_walter.x, o_walter.y, mouse_x, mouse_y);
			instance_create_depth(o_walter.x, o_walter.y, -10, o_laser);
			o_laser.direction_ = dir;
			audio_play_sound(so_laser, 1, false);
			} 
	}
	else {
		instance_destroy();	
	}
}