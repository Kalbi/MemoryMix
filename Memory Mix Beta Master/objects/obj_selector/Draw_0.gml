//draw_circle_color(200, 300, 25, c_white, c_white, false);
draw_set_font(fnt_big)

draw_text(365, 100, string("Round ") + string(global.roundnum));

draw_set_font(fnt_title)

draw_text(50, 100, string("Score: ") + string(global.thescore));

