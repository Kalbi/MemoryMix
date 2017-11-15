
/// @description draw our menu

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_title);
draw_set_color(c_white);


for (i = 0; i < array_length_1d(menu); i++) {
	draw_text(x + space, y + (i * space), string(menu[i]));
}

draw_sprite(sprite_index, 0, x + 20, y + mpos * space);
draw_set_font(fnt_big);
draw_text(300, 100, "Single Player");
