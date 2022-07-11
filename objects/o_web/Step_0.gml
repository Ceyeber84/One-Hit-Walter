/// @description Slow walter

// stop animation repeating

if image_index = 8 {
	image_speed = 0;
}

if health_ <= 0 {
	instance_destroy();	
}