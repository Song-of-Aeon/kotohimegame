nu pattern_ext(function() {
	c
	x = WIDTH/2; //set boss x to the middle of the screen
	y = HEIGHT/2; //and y
	if ncm(300) { //every 300 frames
		var dude = c_shootlasercircle(x, y, 0, seed.next(360), 9, 100, 20, las.small, c_blue, global.bullshitrecursive); //shoot a circle of lasers that have the behavior of "global.bullshitrecursive". this will be explained later
		with_array(dude, function() {center = new vec2(x, y) escapedistance=200}); //normally i can act directly upon variables set to the response of the action of spawning a bullet, but this is a lot of them, so i have to do a special function. its uh. complicated
	}
}, 600, 70, "touhou", SPELL.CARD, DIFFICULTY.HARD, "Nue Sign [Danmaku Chimaera]", function() {count=280; x=WIDTH/2; y=HEIGHT/2}); //think this is the end? nope. since im defining some stuff externally, starts below

global.bullshitrecursive = function() { //this is the logic for the lasers im shooting
	c
	if count <= 80 { //for the first 80 frames, do this
		spd = sin(count/40)*1; //sine function for smooth acceleration. cut it halfway through so it doesnt come to a halt.
	} else spd = lerp(spd, 0, .1);
	if count == 100 { //only on the 100th frame of this laser, do this
		var i;
		for(i=-4; i<5; i++) { //one of these again. we start at -4 and go until -5, so we do the logic nine times.
			var lad = c_shoot(x, y, 0, 0, bul.circle, c_blue, function() { //this is the logic for the bullets the lasers are shooting
				if !count starting = new vec2(x, y); //if count is zero (not count (!count)), create a set of variables to hold the spawn position of this bullet
				c
				var bogo = distabs(point_direction(center.x, center.y, starting.x, starting.y)+turning, distance); //get the RISE and RUN of the space between the BOSS (starting) and our SPAWN position PLUS the DISTANCE we are rotating. multiply that by the DISTANCE we spawned away from the boss at and store the offsets in a variable called bogos. this took me a bit.
				if count <= 180 { //for the first 180 frames, do this
					if isleft { //if i told you you were left turn left
						turning = -cos(count/60)*(360/20);
					} else { //otherwise turn right. both use cosine for smooth movement
						turning = cos(count/60)*(360/20);
					}
				}
				if count == 200 { //only on the 200th frame of this bullet, do this
					if makeagain { //if i told you you should make a laser when you die
						var guy = c_shootlaser(x, y, 0, point_direction(center.x, center.y, x, y), 9, 90, las.small, c_blue, global.bullshitrecursive); //shoot a laser with the same logic the original lasers spawned with
						//this will perpetuate the cycle, allowing it to keep spawning bullets that form back into lasers
						//this is also why i had to create global.bullshitrecursive outside of the normal spellcard logic zone, so i could repeatedly use it from anywhere.
						//the logic continues until the bullets and lasers go far enough to despawn
						guy.center = new vec2(center.x, center.y); //we have been carrying this center variable since the very start.
					}
					instance_destroy(); //you should reallocate the ram that maintains you NOW (destroy bullet)
				}
				x = center.x+bogo.x; //set x using the bogo variable to the correct location
				y = center.y+bogo.y; //and y
			});
			lad.center = center; //moving the center variable (its always equivalent to the boss' position)
			lad.isleft = abs(i)%2 ? 1 : -1; //if the absolute value of i is odd set isleft to true for the bullets
			lad.turning = 0; //we're back in the laser logic, by the way. did you notice? it goes pretty far out.
			lad.escapedistance = 200; //how far bullets have to travel before despawning. normally its 50 but this pattern expects more offscreen
			lad.distance = point_distance(x, y, center.x, center.y)+i*8; //how far from the center the bullets spawned should be
			lad.makeagain = i==0; //if i is zero, tell the bullet that it should make a laser when it dies
			instance_destroy(); //the laser dies
		}
	}
}

//var ecks = distabs(point_direction(x, y, center.x, center.y), point_distance(x, y, center.x, center.y)+i*20).x;
//var whai = distabs(point_direction(x, y, center.x, center.y), point_distance(x, y, center.x, center.y)+i*20).y;
//turning = ease_inoutsine(120-count, 120)*(360/20*3);
//turning = ease_inoutsine(count, 120)*(360/20*3);
//lad.starting = new vec2(x, y);