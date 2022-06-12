// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function projectile_spin(projectiledirection){
	image_angle -= 5*sign(projectiledirection);
}