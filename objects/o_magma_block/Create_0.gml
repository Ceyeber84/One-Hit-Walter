/// @description Initiate

depth = -10;
shoot_cd = room_speed * 4;
alarm[0] = shoot_cd;
shoot_dir = 0;

if x <= 12 {
	shoot_dir = 0;
} else if x >= 615 {
	shoot_dir = 180;
} else {
	shoot_dir = 270;
}