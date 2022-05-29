/// @description Movement & place webs

event_inherited();
Collision_Bounce();

if alarm[0] <= 0 {
	alarm[0] = web_cd;
	instance_create_layer(x - hspeed_, y - vspeed_, "Instances", o_web);
}

if health_ <= 0 {
	instance_destroy();
}

x += hspeed_;
y += vspeed_;