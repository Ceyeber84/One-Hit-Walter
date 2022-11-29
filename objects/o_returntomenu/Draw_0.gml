/// @description Draw GUI
draw_text_ext_transformed(room_width/2, 60, "Victory!", 10, room_width, 8, 8, 0);

if global.campaign_unlocked_2 = true && global.campaign_unlocked_3 = false {
	draw_text_ext_transformed(room_width/2, 160, "Desert Campaign Unlocked!", 10, room_width, 4.5, 4.5, 0);
}

if global.campaign_unlocked_3 = true && global.campaign_unlocked_4 = false{
	draw_text_ext_transformed(room_width/2, 160, "Volcano Campaign Unlocked!", 10, room_width, 4.5, 4.5, 0);
}

if global.campaign_unlocked_4 = true{
	draw_text_ext_transformed(room_width/2, 160, "You Beat The Game!", 10, room_width, 4.5, 4.5, 0);
}