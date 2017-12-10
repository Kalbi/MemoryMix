// sets the variables that are read out at the end of each round for the score
number = global.thescore;
global.thousands = 0;
global.hundreds = 0;
global.tens = 0;
global.ones = 0;


timing = 1;

if(number >= 1000)
{
	global.thousands = floor(number / 1000);
	alarm[2] = 30
	alarm[0] = 30 + 30*timing;
	number -= (floor(number / 1000)*1000);
	timing += 2;

}
if(number >= 100)
{
	global.hundreds = floor(number / 100);
	alarm[3] = 30*timing;
	alarm[1] = 30 + 30*timing;
	number -= (floor(number / 100)*100);
	timing += 2;
}
if(19 < number && number < 100)
{
	global.tens = floor(number / 10);	
	alarm[4] = 30*timing;
	number -= (floor(number / 10)*10);
	timing += 1;
}

if(0 < number <= 19)
{		
	global.ones = number;
	alarm[5] = 30*timing;
}
if (global.thescore == 0) {
	audio_play_sound(snd_zero, 0, 0);
}

