nu pattern_ext(function() {
	c;
	if ncm(3) { //every third frame
		var i;
		var radius = 40; //create a variable named radius
		var dude = count/3%radius;
		for (i=-1; i<2; i++) { //create a variable named i and set it to -1, run the code while i is less than two, you know. it'll run three times a frame
			c_shoot(x-20, y, 5, (dude*2 < radius ? 250+dude : 290-dude)+i*55, bul.point, c_red); //oh shit inline conditionals
			c_shoot(x+20, y, 5, (dude*2 < radius ? 290-dude : 250+dude)+i*55, bul.point, c_red); //this is hard to read unless you are the guy who wrote it
			c_shoot(x-60, y, 5, (dude*2 < radius ? 250+dude : 290-dude)+i*55, bul.point, c_red); //all the stuff that has to do with "dude" exists to determine if the next bullet should be to the left or to the right of the last
			c_shoot(x+60, y, 5, (dude*2 < radius ? 290-dude : 250+dude)+i*55, bul.point, c_red); //since, you know, it goes left then right. it goes in a linear route, but to be honest, it would be easier if it was smooth
			c_shoot(x-20, y, 5, (dude*2 < radius ? 250+dude : 290-dude)+i*55+180, bul.small); //oh yeah, the above are for the red bullets pointing down, these four are for the white ones going up.
			c_shoot(x+20, y, 5, (dude*2 < radius ? 290-dude : 250+dude)+i*55+180, bul.small); //lemme at least try to explain. the stuff inside the parenthesis with all the dudes is only equal to one value
			c_shoot(x-60, y, 5, (dude*2 < radius ? 250+dude : 290-dude)+i*55+180, bul.small); //the stuff before the question mark is evaluated. if its true, the value of the stuff in the parenthesis is the value after the question mark
			c_shoot(x+60, y, 5, (dude*2 < radius ? 290-dude : 250+dude)+i*55+180, bul.small); //if its false, its the value after the colons. dont worry about trying to use this, its a c++ thing i learned to just make things take less space
		}
	}
	if ncm(40) { //every 40 frames
		var xpos = x+seed.next(180)-90; //find a spot to shoot near the boss x
		var ypos = y+seed.next(40)-20; //and y
		var guy = c_shoot(xpos, ypos, 2.5, point_direction(xpos, ypos, ISAAC.visiblex, ISAAC.visibley), bul.circle, c_purple); //aim the bullet from where you are shooting to isaac (reimu)
		rescale(guy, 4); //make the bulet four times its normal size. oh yeah, i set a variable named "guy" to the act of shooting a bullet. i did this so i could modify it in this line
	}
	if count == 300 { //ONLY if count is 300, not every 300 frames. this only needs to happen once
		var lad = c_bang(x-20, y, 270, 5, 60, 9999, hsn.flat, c_red, function() { //make a laser that shoots downwards and oscillates. much of the code is reused from the previous stuff, and is likewise obtuse
			if !delay { //this bullet has its own logic. in this part of the code, we're saying what the bullet will do instead of what the pattern will due because its inside the function we give to the bullet
				c //and due to that, the bullet needs its own c to increase its count
				var radius = 25;
				var dude = count/6%radius;
				dir = (dude*2 < radius ? 270+radius/2-dude-6 : 270-radius/2+dude-6)-5; //this shit again
			}
		});
		lad.count = 12.5*6; //two of the lasers start moving a different direction so it looks cooler. count determines direction (dir), so i offset it when it spawns
		c_bang(x+20, y, 270, 5, 60, 9999, hsn.flat, c_red, function() { //but i dont offset this one
			if !delay {
				c
				var radius = 25;
				var dude = count/6%radius;
				dir = (dude*2 < radius ? 270+radius/2-dude-6 : 270-radius/2+dude-6)+5;
			}
		});
		c_bang(x-60, y, 270, 5, 60, 9999, hsn.flat, c_red, function() { //or this one
			if !delay {
				c
				var radius = 25;
				var dude = count/6%radius;
				dir = (dude*2 < radius ? 270+radius/2-dude-6 : 270-radius/2+dude-6);
			}
		});
		var lad = c_bang(x+60, y, 270, 5, 60, 9999, hsn.flat, c_red, function() { //but i do for this
			if !delay {
				c
				var radius = 25;
				var dude = count/6%radius;
				dir = (dude*2 < radius ? 270+radius/2-dude-6 : 270-radius/2+dude-6);
			}
		});
		lad.count = 12.5*6; //right here
	}
}, 600, 70, "touhou", SPELL.CARD, DIFFICULTY.HARD, "dat shit shinki do");