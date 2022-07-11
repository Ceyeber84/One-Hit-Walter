/// @description
if o_game.sandstorm_active_ = true{
		visible = true;
		draw_sprite_ext(s_wind_indicator, image_index, x, y, o_game.sandstorm_direction_, image_yscale, image_angle, image_blend, image_alpha);
	} else {
		visible = false;
	}
