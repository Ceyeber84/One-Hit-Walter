/// @description Draw Text
//Title
draw_text_ext_transformed(room_width/2, 30, "Select Ability", 10, room_width, 7, 7, 0);

if global.ability1 != "Laser" && global.ability2 != "Laser" {
	draw_text_ext_transformed(room_width/2, 138, "Laser", 10, room_width, 5, 5, 0);
	draw_text_ext_transformed(room_width/2, 300, "Press ''RMB''", 10, room_width, 3, 3, 0);
	draw_text_ext_transformed(room_width/2, 340,  "To fire a powerful laser dealing damage and knockback", 10, 72, 2.5, 2.5, 0);
}

if global.ability1 != "Shield" && global.ability2 != "Shield" {
	draw_text_ext_transformed(room_width/2, 138, "Shield", 10, room_width, 5, 5, 0);
	draw_text_ext_transformed(room_width/2, 300, "Press ''F''", 10, room_width, 3, 3, 0);
	draw_text_ext_transformed(room_width/2, 340, "To create a spinning shield and increase rate of fire", 10, 64, 2.5, 2.5, 0);
}

if global.ability1 != "Battery" && global.ability2 != "Battery" {
	draw_text_ext_transformed(room_width/2, 138, "Battery", 10, room_width, 5, 5, 0);
	draw_text_ext_transformed(room_width/2, 300, "Press ''E''", 10, room_width, 3, 3, 0);
	draw_text_ext_transformed(room_width/2, 340, "To greatly increase movement speed", 10, 64, 2.5, 2.5, 0);
}