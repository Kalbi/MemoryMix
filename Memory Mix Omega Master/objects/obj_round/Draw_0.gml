/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_big)
if (global.single) {
	if (global.starpower) {
		draw_set_color(c_yellow);
	} else if (global.chesney) {
		draw_set_color(c_blue);
	}else{ 
		draw_set_color(c_white);
	}
}

draw_text(365, 100, string("Round ") + string(global.roundnum));

if (global.single){

	draw_set_font(fnt_title)

	draw_text(50, 100, string("Score: ") + string(global.thescore));
}else if (global.multi) {
	draw_text(365, 100, string("Round ") + string(global.roundnum));
	
draw_set_font(fnt_title);

	draw_text(100, 700, "Player 1");
	draw_text(750, 700, "Player 2");
	draw_text(100, 200, "Score: " +string(global.p1score));
	draw_text(750, 200, "Score: " +string(global.p2score));
}	
