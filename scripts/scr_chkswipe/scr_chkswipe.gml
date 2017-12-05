// Checks if the player swiped in a certain direction
swipeid = argument[0];
if (swipeid == global.swipedownid) { //checks the ID
	return global.swipedown; //checks the actual bool to see if swiped
}

if (swipeid == global.swipeupid) {
	return global.swipeup;
}

if (swipeid == global.swipeleftid) {
	return global.swipeleft;
}

if (swipeid == global.swiperightid) {
	return global.swiperight;
}


