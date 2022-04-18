/// @description States

//States
event_user(state);

//Move

hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);

Collision_Bounce();
x += hspeed_;
y += vspeed_;
