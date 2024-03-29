/// @description Movement and Attack
event_inherited();
//Death
if health_ <= 0 {
	instance_destroy();	
}

//Move along floor
if x >= room_width/2 && place_meeting(x, y+1, o_wall) && !place_meeting(x+1, y, o_wall){
	hspeed_ = 2;
	image_angle = 0;
	image_xscale = 1;
	variable_instance_set(self, "wall", 0)
}

if x < room_width/2 && place_meeting(x, y+1, o_wall) && !place_meeting(x-1, y, o_wall){
	hspeed_ = -2;
	image_angle = 0;
	image_xscale = -1;
	variable_instance_set(self, "wall", 0)
}

//Move along wall
if place_meeting(x+1, y, o_wall) && !place_meeting(x, y-1, o_wall) {
	image_angle = 90;
	vspeed_ = -2;
	wall = 2;
}

if place_meeting(x-1, y, o_wall) && !place_meeting(x, y-1, o_wall) {
	image_angle = 90;
	image_yscale = -1;
	vspeed_ = -2;
	wall = 1;
}

//Move along ceiling
if place_meeting(x, y-1, o_wall) && wall == 2 && !place_meeting(x-1, y, o_wall) {
	image_angle = 180;
	vspeed_ = 0;
	hspeed_ = -2;	
}

if place_meeting(x, y-1, o_wall) && wall == 1 && !place_meeting(x+1, y, o_wall) {
	image_angle = 0;
	image_yscale = 180;
	vspeed_ = 0;
	hspeed_ = 2;	
}

//Drop down
if instance_exists(o_walter) && (x > o_walter.x-3 && x< o_walter.x+3) && place_meeting(x, y-1, o_wall){
	hspeed_ = 0;
	variable_instance_set(self, "vspeed_", 4);
}


//Collision
Collision();

// Move
x += hspeed_;
y += vspeed_;
