/// @description Take Damage

//Alarm for I-Frames
if alarm[1] <= 0 {
health_ -= 1;
alarm[1] = room_speed;
}
