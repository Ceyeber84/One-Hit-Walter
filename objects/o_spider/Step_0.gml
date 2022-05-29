/// @description Movement & place webs

event_inherited();
Collision_Bounce();

if alarm[0] <= 0 {
	alarm[0] = web_cd;
}

x += hspeed_;
y += vspeed_;