/// @description Variables
hspeed_ = 0.11;
vspeed_ = 0.11;
hacceleration_ = 0.05;
vacceleration_ = 0.05;
max_speed_ = 6;

direction_x = 0;
direction_y = 0;

//States
ATTACK = 0;
SLOW = 1;

state = ATTACK;

variable_instance_set(self, "direction_x", o_walter.x);
variable_instance_set(self, "direction_y", o_walter.y);
