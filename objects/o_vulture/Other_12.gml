/// @description Recover


var dir = point_direction(x,y,xstart,ystart);

hspeed_ += lengthdir_x(.5,dir);
vspeed_ += lengthdir_y(.5,dir);

vspeed_ = clamp(vspeed_, -max_vspeed_, max_vspeed_);

if x > xstart-10 && x < xstart+10 {
	if y > ystart-10 && y < ystart+10	{
		state = FLY;	
	}
}