/// play instructions again if F is pressed
//if (newgame_cooldown > 10) {
audio_stop_all();
audio_play_sound(snd_instructions1, 0, 0);
//time_title += 2000;
while (audio_is_playing(snd_instructions1)) {
}
audio_play_sound(snd_soundintro, 0, 0) 
while (audio_is_playing(snd_soundintro)) {
}
audio_play_sound(snd_ani_cat, 0, 0)
while(audio_is_playing(snd_ani_cat)) {
}
audio_play_sound(snd_action_pressdown, 0, 0)
while(audio_is_playing(snd_action_pressdown)) {
}
audio_play_sound(snd_instructions2, 0, 0)
while(audio_is_playing(snd_instructions2)) {
}
audio_play_sound(snd_correct, 0, 0)
while(audio_is_playing(snd_correct)) {
}
audio_play_sound(snd_instructions3, 0, 0)
while(audio_is_playing(snd_instructions3)) {
}
audio_play_sound(snd_incorrect, 0, 0)
while(audio_is_playing(snd_incorrect)) {
}
audio_play_sound(snd_instructions4, 0, 0)
while(audio_is_playing(snd_instructions4)) {
}
audio_play_sound(snd_gameover, 0, 0)
while(audio_is_playing(snd_gameover)) {
}
audio_play_sound(snd_instructions5, 0, 0)
//}