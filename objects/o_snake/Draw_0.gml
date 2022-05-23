/// @description Rotation
/*
if x < room_width/2 {
	var hflip = -1;	
} else {
	var hflip = 1;
}

if hspeed_ != 0 {
	var hitboxoffset = x + ((hflip-1)/2)*sprite_width;
} else if place_meeting(x-1,y,o_wall){
	var hitboxoffset = x-sprite_width+sprite_height;	
} else {
	var hitboxoffset = x;
}
*/
draw_self();

if vspeed_ != 0 {
	image_angle = 90;	
} else if y < room_height/2 {
	image_angle = 0;	
} else {
	image_angle = 0;	
}


//draw_sprite_ext(s_snake,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

draw_set_color(c_red);
draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1);
draw_set_color(c_white);