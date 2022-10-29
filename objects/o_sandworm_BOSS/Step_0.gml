/// @description Movement & Attack

event_inherited();
event_user(state);
randomise();

//Movement 
x += hspeed_;
y += vspeed_;

image_angle = rotation;

if x > 0 and x < room_width {
	if y > 0 and y < room_height {
		variable_instance_set(self, "attacked_", true);	
	}
}

if health_ <= max_health_/2 {
	attack_cooldown_ = room_speed * 1.25;	
	attack_speed_ = 9;
}

if health_ <= 0 {
	instance_destroy()	
}