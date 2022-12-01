/// @description Return to Menu
instance_activate_all();
global.lives = 3;
global.walters = 3;
o_game.abilities_activated = false;
audio_stop_all();
room_goto(checkpoint0);