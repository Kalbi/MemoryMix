// Sets that the player swiped right if obj_follow collides with boxes in the right region of the screen
if (instance_exists(obj_cue)) {
	global.swiperight = true;
}
// Puts the mouse and obj_follow back in the center of the screen as soon as the swipe is registered
// "Snaps back" to center
window_mouse_set(window_get_width()/2, window_get_height()/2);