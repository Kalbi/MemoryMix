
swipeid = argument[0];
if (swipeid == global.swipedownid) { //check the id
	return global.swipedown; //check the actual bool to see if swiped
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


