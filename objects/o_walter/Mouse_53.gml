/// @description Create the bullet

// Decide speeds and direction for bullet

var dir = point_direction(x, y, mouse_x, mouse_y);
bullet_hspeed_ = lengthdir_x(4, dir);
bullet_vspeed_ = lengthdir_y(5.5, dir);

// Create the bullet

instance_create_layer(x, y, "Instances", o_bullet);