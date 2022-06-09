nu pattern_ext(function() {
	c; //increase count every frame
	if ncm(6) { //if count is evenly divisible by six (every sixth frame)
		var i;
		for (i=0; i<6; i++) { //create a variable called i and set it to zero. as long as i is less than six, this code will continuously run. increase i every time the code runs (run this code six times per frame)
			c_shoot(x, y, 1.6, count/.85+i*60, bul.circle, c_yellow); //shoot a yellow bullet in a direction determined by math performed on count and i (change the direction based on count and i)
			c_shoot(x, y, 1.6, -count/1+i*60, bul.circle, c_yellow); //the same thing, but by using -count instead of count, it goes in the other direction
		}
	}
	if ncm(105) { //every 105 frames
		c_shootcircle(x, y, 1, seed.next(360), 16*4, bul.circle, c_red); //shoot a circle of red bullets in a random direction. seed.next is a function that picks a random number between 0 and the given number
	}
}, 600, 70, "touhou", SPELL.CARD, DIFFICULTY.HARD, "Flower Sign [Gorgeous Sweet Flower]"); //600 hp, 70 seconds, its character is touhou, its a spellcard for hard difficulty, and its named flower sign whatever