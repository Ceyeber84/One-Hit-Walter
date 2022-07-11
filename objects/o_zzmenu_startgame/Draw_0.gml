/// @description Mouse Hover And Gun
//Draw Button
if position_meeting(mouse_x,mouse_y,self) {
	image_xscale = 1.5;
	image_yscale = 1.5;
} else {
	image_xscale = 1;
	image_yscale = 1;
}

draw_sprite_ext(s_zzmenu_startgame,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

//Draw Gun
var dir = point_direction(521, 282, mouse_x, mouse_y);
draw_sprite_ext(s_gun, 0, 521, 282, 4, -4, dir, image_blend, image_alpha);