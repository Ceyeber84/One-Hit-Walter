/// @description

event_inherited();

if health_ <= 0 {
	instance_destroy()	
}

// Collision and Gravity

if !place_meeting(x, y + 1, o_wall) {
	vspeed_ += 1;
}

Collision();

//Scream
if alarm[0] <= 0 && instance_exists(o_walter){
	var dir = point_direction(x, y, o_walter.x, o_walter.y);
	var scream = instance_create_layer(x, y, "Instances", o_scream);
	scream.direction = dir
	alarm[0] = scream_cooldown_ + random_range(-room_speed, room_speed);
	audio_play_sound(so_lionscream, 1, false);

}

x += hspeed_;
y += vspeed_;
