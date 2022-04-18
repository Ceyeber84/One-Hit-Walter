/// @description Damage and Push
var dir = point_direction(o_walter.x, o_walter.y, x, y)

if alarm[0] <= 0 {
	other.health_ -= 1;
	alarm[0] = room_speed/1.5
	other.hspeed_ = lengthdir_x(5, dir);
	other.vspeed_ = lengthdir_y(5, dir);
}

