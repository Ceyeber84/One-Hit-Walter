/// @description Angry

if alarm[0] <= 0 {
	choose_attack_ = true;
	alarm[0] = room_speed * 6;
}

pattern_start = 1;
pattern_end = 4;
event_user(1);

if alarm[0] <= 0 {
	choose_attack_ = true;
	alarm[0] = room_speed * 6;
}

pattern_start = 5;
pattern_end = 5;
event_user(1);