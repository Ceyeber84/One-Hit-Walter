/// @description

event_inherited();

//Turn Around
if place_meeting(x+hspeed_,y,o_wall) {
	hspeed_ = -hspeed_;	
}

//Move
Collision();

if hspeed_ > 1 {
	hspeed_ = lerp(hspeed_, 1, .1);
}
if hspeed_ < -1 {
	hspeed_ = lerp(hspeed_, -1, .1);
}

x += hspeed_;
y = 456;


//Die
if health_ <= 0 {
	instance_destroy();	
}