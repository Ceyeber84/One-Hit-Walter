/// @description Pause
if ds_list_find_index(rooms_noncombat, room) = -1 || room = c_tutorial {
	instance_deactivate_all(false);
	instance_create_depth(room_width/2,room_height/2 - 32,-16000, o_pause_menu);
	instance_create_depth(room_width/2, room_height/2 + 32, -16000, o_zzreturntomenunew);
}