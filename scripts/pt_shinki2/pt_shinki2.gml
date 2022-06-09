nu pattern_ext(function() { //this is another shinki pattern i recreated. can you guess what it is based on the code? probably not that would be weird
	c;
	if count >= 120 { //after 120 frames have passed since the start of the attack
		if ncm(25) { //every 25 frames
			var i;
			var xpos = x+seed.next(180)-90; //find a position x
			var ypos = y+seed.next(40)-20; //find a position y
			for (i=-2; i<3; i++) { //just like the stuff from before! using negatives again
				var guy = c_shoot(xpos, ypos, 2, point_direction(xpos, ypos, ISAAC.visiblex, ISAAC.visibley)+i*10, bul.circle, c_blue); //since the direction changes on i, which increases each of the five times you run this code, this shoots bullets in a wave pattern aimed at the player.
				rescale(guy, 2); //make it bigger
			}
		}
		if ncm(10) {
			var guy = c_shoot(x+seed.next(180)-90, y+seed.next(40)-20, seed.next(10)/5+2, 270, bul.circle); //shoot a bullet from a random position near the boss straight down at a random speed between 2 and 4
			rescale(guy, 4); //make it much bigger
		}
	}
	if count == 10 { //ONLY if the count is exactly equal to ten, not every ten frames
		c_screenshake(5, 30); //screenshake with power 5 and duration 30 frames
		var i;
		for (i=0; i<3; i++) { //just like the stuff from before!
			c_bang(x, y, i*10, 5, 0, 20, hsn.normal); //oh yeah. c_bang(). so you c_shoot for a bullet, c_shootlaser for a laser, c_link for a chain of bullets, and c_bang for hitscans like the ones that shot up momentarily here
			c_bang(x, y, 180-i*10, 5, 0, 20, hsn.normal); //since its not a bullet, its not bul. anything. its hsn. (hitscan). theres las. for lasers, and chains use bul.
		}
		repeat(40) { //do this 40 times before continuing
			var guy = c_shoot(x+seed.next(180)-90, y+seed.next(40)-20, seed.next(10)/5+1, 270+seed.next(60)-30, bul.circle, c_blue);
			rescale(guy, 2);
		}
	}
}, 600, 70, "touhou", SPELL.CARD, DIFFICULTY.HARD, "Devil's Preface");