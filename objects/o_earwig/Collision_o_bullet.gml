/// @description Destroy Bullet

A = [x, y - sprite_height / 2 + 5];
B = [x, y + sprite_height / 2 - 5];
if (point_distance(other.x, other.y, A[0], A[1]) <= 20) or (point_distance(other.x, other.y, B[0], B[1]) <= 20) {
	if i_frames_ = false {
		health_ -= 1;
		i_frames_ = true;
		audio_play_sound(so_enemyhit, 1, false);
	}
} else {
	audio_play_sound(so_earwigx, 1, false);
}
instance_destroy(other);