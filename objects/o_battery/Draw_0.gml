/// @description 
draw_self()

//Cooldown Indicator
var cooldown = 1;
if alarm[1] >= 0 {
draw_set_color(c_maroon);
draw_rectangle(x+31,y+31,x,y,false);
draw_set_color(c_white);
}