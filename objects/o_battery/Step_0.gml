/// @description Make walter fast

if instance_exists(o_walter) {
	if global.battery_unlocked_ = true {
		if keyboard_check(ord("E")) && alarm[1] <= 0 && o_walter.ability_disabled_ = false{
			alarm[0] = room_speed * activity_;
			alarm[1] = room_speed * cooldown_;
			o_walter.max_speed_ = 4.5;
			o_walter.battery_acc_ = 1.4;
			o_walter.slowed = 1;
			if o_walter.heaviness > 1 {
				o_walter.heaviness = o_walter.heaviness / 2;
			}
			audio_play_sound(so_batteryactivate, 7, false);
		}
	
		if alarm[0] <= 0 {
			o_walter.max_speed_ = 3;
			o_walter.battery_acc_ = 1;
		}
	
		if alarm[0] > 0 && o_walter.alarm[3] >= 0 {
			alarm[0] = 0;	
		}
	}
	else {
		instance_destroy();	
	}
}