/// @description movement
event_inherited();
//Death
if health_ <= 0 {
	instance_destroy();	
}

// Collision

if place_meeting(x + hspeed_, y, o_wall) {
	do
	{
		x += sign(hspeed_);
	} until (place_meeting(x + sign(hspeed_), y, o_wall))	
	hspeed_ = -hspeed_;
}

// Gravity

if !place_meeting(x, y + 1, o_wall) {
	vspeed_ += gravity_;
}
if place_meeting(x, y + vspeed_, o_wall) {
	while !place_meeting(x, y + sign(vspeed_), o_wall) {
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}

hspeed_ = lerp(hspeed_, 4 * sign(hspeed_), .2);
// Move
x += hspeed_;
y += vspeed_;

// Create a bullet
if alarm[0] <= 0 && instance_exists(o_walter) {
	var dir = point_direction(x, y, o_walter.x, o_walter.y);
	var x_offset = lengthdir_x(26, dir);
	var y_offset = lengthdir_y(26, dir);
	var bullet = instance_create_layer(x + x_offset, y + y_offset, "Instances", o_acid);
	audio_play_sound(so_enemyshoot, 1, false);
	bullet.direction = dir
	alarm[0] = bullet_cooldown_ + random_range(-room_speed, room_speed);
}

if health_ <= 0 {
	instance_destroy();
}