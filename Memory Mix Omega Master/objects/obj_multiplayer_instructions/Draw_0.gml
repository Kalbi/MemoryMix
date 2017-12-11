/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_big);

draw_text(365, 100, string("Round ") + string(roundnum));

draw_set_font(fnt_title);

	draw_text(100, 700, "Player 1");
	draw_text(750, 700, "Player 2");
	draw_text(100, 200, "Score: " +string(global.p1score));
	draw_text(750, 200, "Score: " +string(global.p2score));