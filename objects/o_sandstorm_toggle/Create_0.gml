/// @description
sandstorm_active_ = true;
sandstorm_direction_ = 1;

instance_create_depth(room_width/2, room_height/8, 10, o_wind_indicator);

alarm[0] = room_speed*5;
alarm[1] = room_speed;