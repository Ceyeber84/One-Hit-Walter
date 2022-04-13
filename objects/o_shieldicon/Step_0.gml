/// @description Activate Shield

if instance_exists(o_walter) {
	if unlocked_ && keyboard_check(ord("F")) && alarm[1] <= 0 {
		alarm[0] = room_speed * activity_;
		alarm[1] = room_speed * cooldown_;
		
		
		//Dit stukkie gekopieerd dus idk
		
		// Check if orbiting object already exists. If it doesn't then create it.
		// o_orbit then holds the ID/index of this single instance.
		// This way we only orbit this one instance and not every instance of the same sort.
		       instance_create_depth(x,y,-1,o_shield);

		// The speed of which to orbit
		orbit_dir+=8;
		// Keep orbit within 360 degrees.
		if (orbit_dir>359) { orbit_dir=0; }

		//finding out the location of the orbiting object and saving it in orbit_x and orbit_y.
		orbit_x=x+(lengthdir_x(64, orbit_dir));
		orbit_y=y+(lengthdir_y(64, orbit_dir));

		//Set the x and the y position of the orbiting object.
		with (o_shield){
		        x=other.orbit_x;
		        y=other.orbit_y;
		}
	}
}