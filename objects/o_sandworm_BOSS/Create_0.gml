/// @description Initiate Sandworm
event_inherited();
randomise();

x = -sprite_width;
y = 0.5 * room_height
			
max_health_ = 42;
health_ = 42;
hspeed_ = 0;
vspeed_ = 0;

attack_cooldown_ = room_speed * 2.25;
hdir_ = 1;
vdir_ = 0;
rotation = 0;
attack_speed_ = 7;
attacked_ = false;
spawned_minions_ = false;


//States
WAITING = 0;
ATTACK = 1;
state = WAITING;

alarm[0] = attack_cooldown_;

alarm[6] = room_speed * 0.5;

//Create Sensors
//Right
with instance_create_depth(room_width + sprite_width, room_height/2, 0, o_sensor_sandworm) {
	image_xscale = 15;
	image_yscale = 21;
}

//Left
with instance_create_depth(-sprite_width, room_height/2, 0, o_sensor_sandworm) {
	image_xscale = 15;
	image_yscale = 21;
}

//Top
with instance_create_depth(room_width/2, -sprite_width, 0, o_sensor_sandworm) {
	image_angle = 90;
	image_xscale = 15;
	image_yscale = 24;
}

//Bottom
with instance_create_depth(room_width/2, room_height + sprite_width, 0, o_sensor_sandworm) {
	image_angle = 90;
	image_xscale = 15;
	image_yscale = 24;
}

instance_create_depth(room_width/2,room_height/10, 0, o_bosshealthbar_sandworm);