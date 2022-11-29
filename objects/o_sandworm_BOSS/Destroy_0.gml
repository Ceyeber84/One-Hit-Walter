/// @description Progression and Boss Stuff
// Inherit the parent event
event_inherited();

//Destroy all minions
instance_destroy(o_enemyparent);

//Unlock Campaign 3
global.campaign_unlocked_3 = true;