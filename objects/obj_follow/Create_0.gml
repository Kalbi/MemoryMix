depth = 100;

x = mouse_x; //obj x-position follows mouse x-position
y = mouse_y; //obj y-position follows mous y-position
window_mouse_set(window_get_width() / 2, window_get_height() / 2); //puts the cursor at the center of the screen


global.swipedown = false;
global.swipeup = false;
global.swipeleft = false;
global.swiperight = false;