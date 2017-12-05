draw_self();
if !instance_exists(obj_spselector) exit; // prevents a crash, if player doesn't exist we dont draw the healthbar

// makes our health bar move smoother using lerp function
draw_health = lerp(draw_health, global.healths, .5);

//set draw color to blue
draw_set_color(c_blue);
//draw our full health bar with the health bar paramaters
if global.healths > 0 {
	// Changes the amount in the healthbar based on how much health the player has
	draw_rectangle(x+6, y+6, x+202*global.healths/global.maxhealths, y+19, false);
}
//set color back to white or everything will be by default blue
draw_set_color(c_white);
