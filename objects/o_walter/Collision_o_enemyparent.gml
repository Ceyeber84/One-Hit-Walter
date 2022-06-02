/// @description Take Damage
//Alarm for I-Frames
if iFrames = false && other.mask_index != -1 {
	health_ -= 1;
	alarm[1] = room_speed;
	iFrames = true;
}