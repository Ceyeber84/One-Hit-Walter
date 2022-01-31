/// @description States and Collision

variable_instance_set(self, "direction_x", o_walter.x);
variable_instance_set(self, "direction_y", o_walter.y);

x += hspeed_;
y += vspeed_;

event_user(state);
Collision();
