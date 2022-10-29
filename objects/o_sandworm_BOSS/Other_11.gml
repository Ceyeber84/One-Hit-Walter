/// @description Attack
randomise();
hspeed_ = attack_speed_ * hdir_;
vspeed_ = attack_speed_ * vdir_;

if place_meeting(x, y, o_sensor_sandworm){
	if attacked_ = true {
		randomise();
		hspeed_ = 0;
		vspeed_ = 0;
		variable_instance_set(self, "attacked_", false);
		alarm[0] = attack_cooldown_;
		
		//Decide new side and position
		var newside = irandom_range(1, 4); //1-left, 2-top, 3-right, 4-bottom
		var newpos = random_range(0.2, 0.8);
		
		//Warp to new location
		//Left
		if newside = 1 {
			x = -sprite_width;
			y = newpos * room_height;
			variable_instance_set(self, "hdir_", 1);
			variable_instance_set(self, "vdir_", 0);
			variable_instance_set(self, "rotation", 0);
			instance_create_depth(16, y, 100, o_sandworm_indicator);
		}
		
		//Top
		if newside = 2 {
			x = newpos * room_width;
			y = -sprite_width;
			variable_instance_set(self, "hdir_", 0);
			variable_instance_set(self, "vdir_", 1);
			variable_instance_set(self, "rotation", 270);
			with instance_create_depth(x, 16, 100, o_sandworm_indicator) {
				image_angle = 270;	
			}
		}
		
		//Right
		if newside = 3 {
			x = room_width + sprite_width;
			y = newpos * room_height;
			variable_instance_set(self, "hdir_", -1);
			variable_instance_set(self, "vdir_", 0);
			variable_instance_set(self, "rotation", 0);
			with instance_create_depth(room_width - 16, y, 100, o_sandworm_indicator) {
				image_angle = 180;	
			}
		}
		
		//Bottom
		if newside = 4 {
			x = newpos * room_height;
			y = room_height + sprite_width;
			variable_instance_set(self, "hdir_", 0);
			variable_instance_set(self, "vdir_", -1);
			variable_instance_set(self, "rotation", 90);
			with instance_create_depth(x, room_height - 16, 100, o_sandworm_indicator) {
				image_angle = 90;	
			}
		}
		state = WAITING;
	}
}