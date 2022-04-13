/// @description Cooldown Indicator
draw_self()

//Cooldown Indicator
var cooldown = (alarm[0])/(room_speed*cooldown_);
if alarm[0] <= 0 {
	cooldown = 0;	
}

if alarm[0] >= 0 {
	draw_set_color(c_maroon);
	draw_set_alpha(0.5);
	draw_rectangle(x+31,y-cooldown*31,x,y-2,false);
	draw_set_color(c_white);
	draw_set_alpha(1);
}