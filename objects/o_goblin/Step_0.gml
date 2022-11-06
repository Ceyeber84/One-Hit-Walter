/// @description movement

event_inherited();

// Death
if health_ <= 0 {
	instance_destroy(self);	
}

// Collision
if place_meeting(x + 1, y, o_wall) or place_meeting(x - 1, y, o_wall) {
	vspeed_ = 0
}
if place_meeting(x, y - 1, o_wall) {
	hspeed_ = 0
}
if place_meeting(x, y + 10, o_wall) {
	vspeed_ = -vspeed_
}

// Round x and y values up or down

if place_meeting(x + hspeed_, y, o_wall) or place_meeting(x, y + vspeed_, o_wall) {
	x =	floor(x) * (hspeed_ <= 0) + ceil(x) * (hspeed_ > 0);
	y = floor(y) * (vspeed_ <= 0) + ceil(y) * (vspeed_ > 0);
}

// Glide
if instance_exists(o_walter) && distance_to_object(o_wall) <= 1 && alarm[0] <= 0 {
	var dir = point_direction(x, y, o_walter.x, o_walter.y);
	hspeed_ = lengthdir_x(speed_, dir);
	vspeed_ = lengthdir_y(speed_, dir);
	alarm[0] = glide_cd;
	dir_ = dir
	saved_hspeed_ = hspeed_
	saved_vspeed_ = vspeed_
}

// Laser Recovery

if laser_recovery = true {
	hspeed_ += xacc * sign(hspeed_);
	vspeed_ += yacc * sign(vspeed_);
	if sign(current_hspeed_) = sign(saved_hspeed_) {
	if current_hspeed_ >= saved_hspeed_ {
		hspeed_ = clamp(hspeed_, saved_hspeed_, current_hspeed_);
		if hspeed_ <= saved_hspeed_ {
			good_h = true;
		}
	} else {
		hspeed_ = clamp(hspeed_, current_hspeed_, saved_hspeed_);
		if hspeed_ >= saved_hspeed_ {
			good_h = true;
		}
	}
	} else {
		if current_hspeed_ >= -saved_hspeed_ {
		hspeed_ = clamp(hspeed_, -saved_hspeed_, current_hspeed_);
		if hspeed_ <= -saved_hspeed_ {
			good_h = true;
		}
	} else {
		hspeed_ = clamp(hspeed_, current_hspeed_, -saved_hspeed_);
		if hspeed_ >= -saved_hspeed_ {
			good_h = true;
		}
	}
	}
	if sign(current_vspeed_) = sign(saved_vspeed_) {
	if current_vspeed_ >= saved_vspeed_ {
		vspeed_ = clamp(vspeed_, saved_vspeed_, current_vspeed_);
		if vspeed_ <= saved_vspeed_ {
			good_v = true;
		}
	}
	else {
		vspeed_ = clamp(vspeed_, current_vspeed_, saved_vspeed_);
		if vspeed_ >= saved_vspeed_ {
			good_v = true;
		}
	}
	} else {
		if current_vspeed_ >= -saved_vspeed_ {
		vspeed_ = clamp(vspeed_, -saved_vspeed_, current_vspeed_);
		if vspeed_ <= -saved_vspeed_ {
			good_v = true;
		}
	}
	else {
		vspeed_ = clamp(vspeed_, current_vspeed_, -saved_vspeed_);
		if vspeed_ >= -saved_vspeed_ {
			good_v = true;
		}
	}
	}
	if good_h = true && good_v = true {
		laser_recovery = false;
		good_h = false;
		good_v = false;
	}
}

Collision();

// Move
x += hspeed_;
y += vspeed_;