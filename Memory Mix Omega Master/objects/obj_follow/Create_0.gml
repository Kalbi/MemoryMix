depth = 100;

x = mouse_x; //obj_follow x-position follows mouse x-position (allows for swipe left and swipe right)
y = mouse_y; //obj_follow y-position follows mouse y-position (allows for swipe up and swipe down)
window_mouse_set(window_get_width() / 2, window_get_height() / 2); //puts the cursor at the center of the screen

// When obj_follow is created, it sets each swipe variable to false, so that the player doesn't automatically get something right
global.swipedown = false;
global.swipeup = false;
global.swipeleft = false;
global.swiperight = false;