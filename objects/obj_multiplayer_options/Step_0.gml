/// @description Step thru MP options menu

var move = 0;

move -= max(keyboard_check_pressed(vk_up), 0);
move += max(keyboard_check_pressed(vk_down), 0);

if (move != 0) {
	// TODO: Here we should add sound for the menu for whichever option we're on.
	// Whenever we choose a new option, we should stop the sound and just play the next one
	// because we don't want to control the speed at which the player moves the arrows.
	mpos += move;
	if (mpos < 0) mpos = array_length_1d(menu)-1;
	if (mpos > array_length_1d(menu)-1) mpos = 0;
	
}

var push;
push = max(keyboard_check_released(vk_enter), 0);

// README: This is probably a good way to squeeze all of our audio playback code
// for organizations' sake
if (push==1) scr_mp_options();



