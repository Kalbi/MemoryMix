// Creates different "settings" for each "option" in the option menu
// The box selector objects allow for the curr variables to switch between the different constant "settings"
enum tracknum { 
	none,
	track1,
	track2
}

enum soundpack {
	animals,
	instruments,
	city
}

enum controltype {
	keyboard,
	xbox
}

enum actions {
	both,
	keys,
	swipe
}

// The default music setting is track 1
curr_track = tracknum.track1;
// The default soundpack setting is animals
curr_sound_pack = soundpack.animals;
// The default control setting is the keyboard
curr_controltype = controltype.keyboard;
// The default actions setting is both
curr_actions = actions.both;
