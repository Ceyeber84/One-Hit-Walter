/// @description Recover


var dir = point_direction(x,y,xstart,ystart);

hspeed_ = lengthdir_x(8,dir);
vspeed_ = lengthdir_y(8,dir);

if x == xstart && y == ystart {
	alarm[0] = random_range(room_speed * 3, room_speed * 6);
	state = FLY;	
}