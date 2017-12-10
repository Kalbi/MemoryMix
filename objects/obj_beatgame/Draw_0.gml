/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_font(fnt_big);
draw_text(350, 350, "YOU WIN");
draw_set_font(fnt_title);
draw_text(350, 500, "Final Score: " +string(global.thescore));
draw_text(350, 600, string(30*audio_sound_length(snd_beatgame)));
