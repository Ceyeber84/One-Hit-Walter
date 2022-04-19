/// @description Attack
if instance_exists(o_walter) {
	hspeed_ = lengthdir_x(6,direction_);
	vspeed_ = lengthdir_y(6,direction_);
}

hspeed_ = clamp(hspeed_, -10, 10);

if y >= room_height*0.8{
	state = RECOVER;	
}