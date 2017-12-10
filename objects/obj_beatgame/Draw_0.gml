/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
if (global.single) {
	draw_set_font(fnt_big);
	draw_text(350, 350, "YOU WIN");
	draw_set_font(fnt_title);
	draw_text(350, 500, "Final Score: " +string(global.thescore));
}else if (global.multi) {
	if (global.p1score > global.p2score) {
		draw_set_font(fnt_big)
		draw_text(350, 350, "Player 1 wins!")
	}else if (global.p1score < global.p2score) {
		draw_text(350, 350, "Player 2 wins!")
	}else if (global.p1score == global.p2score) {
		draw_text(350, 350, "It's a tie!")
	}
}
