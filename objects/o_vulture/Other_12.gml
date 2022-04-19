/// @description Recover


var dir = point_direction(x,y,x_return,y_return);

hspeed_ += lengthdir_x(.5,dir);
vspeed_ += lengthdir_y(.5,dir);

vspeed_ = clamp(vspeed_, -max_vspeed_, max_vspeed_);
hspeed_ = clamp(hspeed_, -10, 10);

if y <= room_height * 0.3 {
	randomise()
	alarm[0] = random_range(room_speed * 3, room_speed * 6);
	state = FLY;
}