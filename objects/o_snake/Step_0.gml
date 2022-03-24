/// @description Movement and Attack

//Move along floor
if x >= room_width/2 && place_meeting(x, y+1, o_wall) && !place_meeting(x+1, y, o_wall){
	hspeed_ = 2;
	variable_instance_set(self, "wall", 0)
}

if x < room_width/2 && place_meeting(x, y+1, o_wall) && !place_meeting(x-1, y, o_wall){
	hspeed_ = -2;
	variable_instance_set(self, "wall", 0)
}

//Move along wall
if place_meeting(x+1, y, o_wall) && !place_meeting(x, y-1, o_wall) {
	vspeed_ = -2;
	variable_instance_set(self, "wall", 2)
}

if place_meeting(x-1, y, o_wall) && !place_meeting(x, y-1, o_wall) {
	vspeed_ = -2;
	variable_instance_set(self, "wall", 1)
}

//Move along ceiling
if place_meeting(x, y-1, o_wall) && wall == 2 && !place_meeting(x-1, y, o_wall) {
	variable_instance_set(self, "vspeed_", 0);
	hspeed_ = -2;	
}

if place_meeting(x, y-1, o_wall) && wall == 1 && !place_meeting(x+1, y, o_wall) {
	variable_instance_set(self, "vspeed_", 0);
	hspeed_ = 2;	
}

//Drop down
if instance_exists(o_walter) && x == o_walter.x && place_meeting(x, y-1, o_wall){
	variable_instance_set(self, "hspeed_", 0);
	variable_instance_set(self, "vspeed_", 2);
}

// Move
x += hspeed_;
y += vspeed_;

//Collision
Collision();