/// @description draw our menu
draw_set_font(fnt_title);
// Music
draw_text(400, 270, "None")
draw_text(575, 270, "Track 1")
// Soundpack
draw_text(400, 370, "Animals")
draw_text(600, 370, "Music")
draw_text(800, 370, "City")
// Controls
draw_set_font(fnt_title);
draw_text(400, 470, "Keyboard")
draw_text(700, 470, "Gamepad")
// Actions
draw_set_font(fnt_title);
draw_text(400, 570, "All")
draw_text(555, 570, "Keys")
draw_text(710, 570, "Swipe")
// Title of menu
draw_set_font(fnt_big);
draw_text(400, 100, "Settings");

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_title);
draw_set_color(c_white);


for (i = 0; i < array_length_1d(menu); i++) {
	draw_text(x + space, y + (i * space), string(menu[i]));
}

draw_sprite(sprite_index, 0, x + 20, y + mpos * space);