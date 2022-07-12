/// @description Hover Mouse
//Draw Button
if position_meeting(mouse_x,mouse_y,self) {
	image_xscale = 1.2;
	image_yscale = 1.2;
} else {
	image_xscale = 1;
	image_yscale = 1;
}

var roomname = room_get_name(room);

if global.checkpoint != 0 && roomname != "zz_endscreen" {
	draw_sprite_ext(s_zzendscreen_returntocheckpoint,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
} else {
	draw_sprite_ext(s_zzendscreen_returntomenu,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}