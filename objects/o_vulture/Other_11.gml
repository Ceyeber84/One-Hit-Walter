/// @description Attack
if instance_exists(o_walter) {
	hspeed_ = lengthdir_x(8,direction_);
	vspeed_ = lengthdir_y(8,direction_);
}

if y >= room_height*0.3{
	state = RECOVER;	
}