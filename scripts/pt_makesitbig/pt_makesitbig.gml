nu pattern_ext(function() {
	count++;
	iterations = cos(count/360)*10;
	if ncm(7) {
		var i;
		for (i=0; i<5; i++) {
			var myb = c_shoot(x+sin(iterations+degtorad(360*i/5))*80, y+cos(iterations+degtorad(360*i/5))*80, 3, point_direction(x+sin(iterations+degtorad(360*i/5))*80, y+cos(iterations+degtorad(360*i/5))*80, x, y), global.bullets.square, c_purple);
			myb.image_xscale = abs(abs(iterations/1.15)-10/1.15)+1;
			myb.image_yscale = abs(abs(iterations/1.15)-10/1.15)+1;
		}
	}
	
	
		
	/*if ncm(20) {
		var direct = irandom(18);
		var i;
		//log(2);
		for (i=0; i<2; i++) {
			c_shootabs(x, y, 2*ineg(i), -1, global.bullets.square, c_red, method(undefined, function() {
				count++;
				if ncm(20) {
					guy = c_shootabs(x, y, 0, 0, global.bullets.square, c_yellow, method(undefined, function() {
						count++;
						vspd += .1;
						if y+vspd >= global.gh {
							vspd = -vspd*.4;
							if x < WIDTH/2 hspd += .2 else hspd -= .2;
						}
						
					}));
					guy.hspd = seed.next(10)/5-1;
				}
			}));
		}
	}*/
}, 600, 70, "aunn", SPELL.CARD, DIFFICULTY.HARD, "Guardian \"Certain Boldness\"");
//}, 600, 70, "aunn", SPELL.CARD, DIFFICULTY.HARD, "aunning");
//formerly border of makes it big by aunn