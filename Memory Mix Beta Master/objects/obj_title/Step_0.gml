// Creates a loop of the title screen audio/instructions
if (time_title <= 0) {
audio_play_sound(snd_gameintro, 0, 0);
time_title += 400;
}
time_title -= 1;

newgame_cooldown +=1;