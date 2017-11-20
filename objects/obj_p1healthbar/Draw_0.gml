draw_self();
if !instance_exists(obj_player1) exit; // prevents a crash, if player doesn't exist we dont draw

// makes our health bar move smoother using lerp function
draw_health = lerp(draw_health, obj_player1.healths, .5);

//set draw color to red
draw_set_color(c_red);
//draw our full health bar with the health bar params
if global.healths > 0 {
	draw_rectangle(x+6, y+6, x+202*global.healths/global.maxhealths, y+19, false);
}
//set color back to white or everything will be by default red :(
draw_set_color(c_white);
