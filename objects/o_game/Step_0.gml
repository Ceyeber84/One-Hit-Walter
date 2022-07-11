/// @description

//Switch Sandstorm Direction
if alarm[0] <= 0 {
	sandstorm_direction_ = sandstorm_direction_ * -1;
	alarm[0] = room_speed*5;
}

//Next Room
var roomname = room_get_name(room);

if (roomname != "a_title_screen") && (roomname != "b_abilityselect1") && (roomname != "c_tutorial") {
	if !instance_exists(o_enemyparent) {
		if room_next(room) != -1 {
			room_goto_next()	
		}
	}
}


//Debug
/*var width = surface_get_width(application_surface);
var height = surface_get_height(application_surface);
if alarm[1] <= 0 {
	show_debug_message(width);
	show_debug_message(height);	
	alarm[1] = room_speed;
}*/