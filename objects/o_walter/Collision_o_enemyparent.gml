/// @description Take Damage
//Alarm for I-Frames
if iFrames = false && other.mask_index != -1 && other.id != o_wolf_arm.id {
	health_ -= 1;
	alarm[1] = room_speed;
	iFrames = true;
}