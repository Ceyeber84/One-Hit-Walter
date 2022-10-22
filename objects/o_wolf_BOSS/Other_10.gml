/// @description Idle


if alarm[0] <= 0 {
	state = ATTACK;
	choose_attack_ = true;
	alarm[0] = attack_cooldown_;
	spawn_enemy = -spawn_enemy;
	
	//Spawn enemy
	var enemy = irandom(2);
	if spawn_enemy = 1 {
		if enemy = 0 {
			instance_create_depth(room_width/2, room_height*0.92, -10000, o_bullfrog);	
		}

		if enemy = 1 {
			instance_create_depth(room_width/2, room_height*0.92, -10000, o_swallow);	
		}

		if enemy = 2 {
			instance_create_depth(room_width/2, room_height*0.92, -10000, o_spider);	
		}
	}
}