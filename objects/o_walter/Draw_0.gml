/// @description Gun and Debuffs

// Draw player
var flipped = 1 + (mouse_x <= x) * -2;
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left)

if hinput == 0 && vspeed_ >= 0 {
	draw_sprite_ext(s_walter_idle, image_index, x, y, flipped, image_yscale, 0, image_blend, image_alpha);
} else {
	draw_sprite_ext(s_walter_moving, image_index, x, y, flipped, image_yscale, 0, image_blend, image_alpha);	
}

// Draw the gun
var dir = point_direction(x, y, mouse_x, mouse_y);
draw_sprite_ext(s_gun, 0, x+5 * flipped, y, image_xscale, flipped, dir, image_blend, image_alpha); 

//Draw Debuffs
if alarm[3] > 0 {
	var frightened = true;
} else {
	var frightened = false;	
}

if slowed != 1 {
	var slow = true;	
} else {
	var slow = false;	
}

if heaviness != 0 {
	var heavy = true;	
} else {
	var heavy = false;	
}

debuffs_active_ = frightened + slow + heavy;
	//Frightened = 1, Slow = 2, Heavy = 3
if frightened = true {
	if debuffs_active_ = 1 {
		draw_sprite_ext(s_debuff_frightened, image_index, x, y - (sprite_height / 2) - 3, 0.5, 0.5, image_angle, image_blend, image_alpha);
	}
	if debuffs_active_ = 2 {
		draw_sprite_ext(s_debuff_frightened, image_index, x - 5, y - (sprite_height / 2) - 3, 0.5, 0.5, image_angle, image_blend, image_alpha);
	}
	if debuffs_active_ = 3 {
		draw_sprite_ext(s_debuff_frightened, image_index, x - 10, y - (sprite_height / 2) - 3, 0.5, 0.5, image_angle, image_blend, image_alpha);
	}
}

if slow = true {
	if debuffs_active_ = 1 {
		draw_sprite_ext(s_debuff_slowed, image_index, x, y - (sprite_height / 2) - 3, 0.5, 0.5, image_angle, image_blend, image_alpha);
	}
	if debuffs_active_ = 2 && frightened = true{
		draw_sprite_ext(s_debuff_slowed, image_index, x + 5, y - (sprite_height / 2) - 3, 0.5, 0.5, image_angle, image_blend, image_alpha);
	}
		if debuffs_active_ = 2 && heavy = true{
		draw_sprite_ext(s_debuff_slowed, image_index, x - 5, y - (sprite_height / 2) - 3, 0.5, 0.5, image_angle, image_blend, image_alpha);
	}
	if debuffs_active_ = 3 {
		draw_sprite_ext(s_debuff_slowed, image_index, x, y - (sprite_height / 2) - 3, 0.5, 0.5, image_angle, image_blend, image_alpha);
	}
}

if heavy = true {
	if debuffs_active_ = 1 {
		draw_sprite_ext(s_debuff_heavy, image_index, x, y - (sprite_height / 2) - 3, 0.5, 0.5, image_angle, image_blend, image_alpha);
	}
	if debuffs_active_ = 2 {
		draw_sprite_ext(s_debuff_heavy, image_index, x + 5, y - (sprite_height / 2) - 3, 0.5, 0.5, image_angle, image_blend, image_alpha);
	}
	if debuffs_active_ = 3 {
		draw_sprite_ext(s_debuff_heavy, image_index, x + 10, y - (sprite_height / 2) - 3, 0.5, 0.5, image_angle, image_blend, image_alpha);
	}
}