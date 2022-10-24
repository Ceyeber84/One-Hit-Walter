/// @description Attack
hspeed_ = attack_speed_ * side;

if x >= room_width + sprite_width or x <= -sprite_width {
	if attacked_ = true {
		hspeed_ = 0;
		vspeed_ = 0;
		alarm[0] = attack_cooldown_;
		variable_instance_set(self, "side", -side);
		variable_instance_set(self, "attacked_", false);
		state = WAITING;
	}
}