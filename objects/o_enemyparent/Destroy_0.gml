/// @description Death Animation
var animscale = ((sprite_height + sprite_width)/2)/24
with instance_create_depth(x, y, 100, o_enemy_death) {
	image_xscale = animscale;
	image_yscale = animscale;
}
if instance_exists(o_wolf_BOSS) {
	if self.id = o_wolf_BOSS.id {
		basicdeathsound = false;
	}
} 
if instance_exists(o_sandworm_BOSS) {
	if self.id = o_sandworm_BOSS.id {
		basicdeathsound = false;
	}
}
if instance_exists(o_magma_delver_BOSS) {
	if self.id = o_magma_delver_BOSS.id {
		basicdeathsound = false;
	}
}
if instance_exists(o_wolf_arm) {
	if self.id = o_wolf_arm.id {
		basicdeathsound = false;
	}
} 
if instance_exists(o_magma_tendril) {
	if self.id = o_magma_tendril.id {
		basicdeathsound = false;
	}
} 
if basicdeathsound = true {
	audio_play_sound(so_enemydeath, 1, false);
}