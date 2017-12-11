// sets the variables that are read out at the end of each round for the score
if (global.single) {
	number = global.thescore;
} else if (global.multi) {
	if (global.read1) {
		number = global.p1score;
	} else if (global.read2) {
		number = global.p2score;
	}
}
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
if (global.single) {
	if (global.thescore == 0) {
		alarm[11] = 30;
	}
}else if (global.multi) {
		if (global.p1score == 0 and global.read1 == true) {
			alarm[11] = 30;
			
		} else if (global.p2score == 0 and global.read2 == true) {
			alarm[11] = 30;
		}
}

