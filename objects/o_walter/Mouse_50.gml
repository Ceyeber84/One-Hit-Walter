/// @description Create the bullet

// Decide speeds and direction for bullet

var dir = point_direction(x, y, mouse_x, mouse_y);
bullet_hspeed_ = lengthdir_x(4, dir) + 0.3 * hspeed_;
bullet_vspeed_ = lengthdir_y(5.5, dir) + 0.3 * vspeed_;

// Create the bullet
if alarm[0] <= 0 {
	var x_offset = lengthdir_x(26, dir);
	var y_offset = lengthdir_y(26, dir);
	var flipped = 1 + (mouse_x > x) * -2;
	var gun_x = x + 4 * flipped;
	instance_create_layer(gun_x + x_offset, y + y_offset - 4, "Instances", o_bullet);
	alarm[0] = bullet_cooldown_;
}