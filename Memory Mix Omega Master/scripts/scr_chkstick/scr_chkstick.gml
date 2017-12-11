// Checks if the player moved the joystick in a certain direction
stickid = argument[0];
if (stickid == global.stickdownid) { //checks the ID
	return (gamepad_axis_value(0, gp_axislv) > .7); //checks the actual bool to see if swiped
}

if (stickid == global.stickupid) {
	return (gamepad_axis_value(0, gp_axislv) < -.7);
}

if (stickid == global.stickleftid) {
	return (gamepad_axis_value(0, gp_axislh) < -.7);
}

if (stickid == global.stickrightid) {
	return (gamepad_axis_value(0, gp_axislh) > .7);
}


