/// @description Attack
if instance_exists(o_walter) {
	hspeed_ = lengthdir_x(6,direction_);
	vspeed_ = lengthdir_y(6,direction_);
}

hspeed_ = clamp(hspeed_, -7, 7);

if y >= room_height*0.8 || (place_meeting(x+5,y,o_wall) || place_meeting(x-5,y,o_wall)) || place_meeting(x, y-5, o_wall){
	state = RECOVER;	
}