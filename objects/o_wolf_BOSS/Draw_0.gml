/// @description Draw Wolf and Health Bar

draw_self();
image_speed = 0;

draw_sprite(s_bosshealthbar, image_index, room_width/2, room_height/10);

var healthbarx1 = s_bosshealthbar.x-156;
var healthbary1 = s_bosshealthbar.y-12;

var healthbarx2 = (s_bosshealthbar.x+156);
var healthbary2 = s_bosshealthbar.y+12;

draw_set_color(c_red);
draw_rectangle(healthbarx1,healthbary1,healthbarx2,healthbary2,false);
draw_set_color(c_white);