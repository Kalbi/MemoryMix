//draw_circle_color(200, 300, 25, c_white, c_white, false);
draw_set_font(fnt_title)

draw_text(450, 100, string("Round ") + string(global.roundnum));

draw_set_font(fnt_instructions)

draw_text(100, 100, string("Score:") + string(global.thescore));