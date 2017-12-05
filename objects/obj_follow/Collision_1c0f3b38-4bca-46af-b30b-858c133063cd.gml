// Sets that the player swiped down if obj_follow collides with boxes in the bottom region of the screen
if (instance_exists(par_cue)) {
	global.swipedown = true;
}
window_mouse_set(window_get_width()/2, window_get_height()/2);
