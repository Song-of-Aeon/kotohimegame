nu pattern_ext(function() {
	c;
	global.spelltiming = true;

	if count == 1 {
		c_removeitem(ITEMS.KAGUYAA);
		var earfthingy = c_makeshooter(WIDTH/2, HEIGHT/2, 99999999, en.earf, new pattern(function() {
			c;
			if count > 60 and count < 2000 {
				if ncm(9) {
					c_shoot(x, y, 6, point_me() +64, bul.smolerboolit);
					c_shoot(x, y, 6, point_me() -64, bul.smolerboolit);
					c_shoot(x, y, 6, point_me() -96, bul.smolerboolit);
					c_shoot(x, y, 6, point_me() +96, bul.smolerboolit);
					c_shoot(x, y, 6, point_me() +128, bul.smolerboolit);
					c_shoot(x, y, 6, point_me() -128, bul.smolerboolit);
					c_shoot(x, y, 6, point_me() +160, bul.smolerboolit);
					c_shoot(x, y, 6, point_me() +160, bul.smolerboolit);
					c_shoot(x, y, 6, point_me() +192, bul.smolerboolit);
					c_shoot(x, y, 6, point_me() +192, bul.smolerboolit);
				}
				if ncm(90) {
					c_shootlaser(x, y, 3, point_me(), 10, 125, las.sunlazer, c_red);
					c_shootlaser(x, y, 3, point_me()-32, 8, 100, las.blulazer, c_red);
					c_shootlaser(x, y, 3, point_me()+32, 8, 100, las.blulazer, c_red);
					c_shootlaser(x, y, 3, point_me()-64, 8, 100, las.blulazer, c_red);
					c_shootlaser(x, y, 3, point_me()+64, 8, 100, las.blulazer, c_red);
				}
			}
			
			if count > 2200 {
			//should be count > 2200 and count <4800
				if count %130 >= 65 {
					if ncm(5) {
						c_shoot(x, y, 6, 120, bul.smolerboolit);
						c_shoot(x, y, 6, 240, bul.smolerboolit);
						c_shoot(x, y, 6, 360, bul.smolerboolit);
					}
				} else {
					if ncm(5) {
						c_shoot(x, y, 6, 60, bul.bluamulet);
						c_shoot(x, y, 6, 180, bul.bluamulet);
						c_shoot(x, y, 6, 300, bul.bluamulet);
					}
				}
			}
			
			if count > 4000 {
				if ncm(42) {
					c_shoot(x+25, y, 2, point_me(), bul.peenkboolit);
					c_shoot(x-25, y, 2, point_me(), bul.peenkboolit);					
				}
			}
			
			if count > 4800 {
				if ncm(30) {
					c_shoot(x, y+40, 6, point_me(), bul.bigerboolit, u, function(){	
						c
						x = sin(count/60)*30+WIDTH/2;
						y = cos(count/60)*30+HEIGHT/2;
						if count = 400{
							instance_destroy();
						}
					});
				}
			}
		})); //end of earth logic
	}	

	if count > 75 {
		if ncm(7) {
			//var i;
			//var amountoftimes = 8;
			//for (i=0; i<amountoftimes; i++) {
			c_shoot(x, y, 2, (count+1), bul.blunaifu);
			c_shoot(x, y, 2, (count+60), bul.naifu);
			c_shoot(x, y, 2, (count+120), bul.blunaifu);
			c_shoot(x, y, 2, (count+180), bul.naifu);
			c_shoot(x, y, 2, (count+240), bul.blunaifu);
			c_shoot(x, y, 2, (count+300), bul.naifu);
		}
	}
	
	if count > 2201 {
		if ncm(30) {
			var orbit = c_shoot(x, y, 6, point_me(), bul.oringboolit, u, function() {
				c
				x = sin(count/80)*20+o_boss.x;
				y = cos(count/80)*80+o_boss.y;
				if count = 600{
					instance_destroy();
				}
			});
			orbit.escapedistance = 200;
			var orbit = c_shoot(x, y, 6, point_me(), bul.peenkboolit, u, function() {	
				c
				x = sin(count/80)*80+o_boss.x;
				y = cos(count/80)*20+o_boss.y
				if count = 600{
					instance_destroy();
				}
			});
			orbit.escapedistance = 200
		}
		if ncm(13) {
			c_shoot(x, y, 2, seed.next(360), bul.gurinnaifu);
			c_shoot(x, y, 2, seed.next(360), bul.gurinnaifu);
			c_shoot(x, y, 2, seed.next(360), bul.gurinnaifu);
			c_shoot(x, y, 2, seed.next(360), bul.gurinnaifu);
			c_shoot(x, y, 2, seed.next(360), bul.gurinnaifu);
			c_shoot(x, y, 2, seed.next(360), bul.gurinnaifu);
		}
		
		if count > 3800{
			if count %260 >= 130 {
				if ncm(69) {
					c_shootlaser(x, y, 0.5, point_me(), 12, 144, las.sunlazer, u, function() {spd+=0.1});
					c_shootlaser(x, y, 0.5, point_me()+16, 8, 96, las.blulazer, u, function() {spd+=0.1});
					c_shootlaser(x, y, 0.5, point_me()-16, 8, 96, las.blulazer, u, function() {spd+=0.1});
					c_shootlaser(x, y, 0.5, point_me()+32, 8, 96, las.lazerred, u, function() {spd+=0.1});
					c_shootlaser(x, y, 0.5, point_me()-32, 8, 96, las.lazerred, u, function() {spd+=0.1});
				}
			}else{
				if ncm(69) {
					c_shootlaser(x, y, 0.5, point_me(), 12, 144, las.sunlazer, u, function() {spd+=0.1});
					c_shootlaser(x, y, 0.5, point_me()+16, 8, 96, las.lazerred, u, function() {spd+=0.1});
					c_shootlaser(x, y, 0.5, point_me()-16, 8, 96, las.lazerred, u, function() {spd+=0.1});
					c_shootlaser(x, y, 0.5, point_me()+32, 8, 96, las.blulazer, u, function() {spd+=0.1});
					c_shootlaser(x, y, 0.5, point_me()-32, 8, 96, las.blulazer, u, function() {spd+=0.1});									
				}
			}
			/*
			if ncm (35){		
				c_shoot(-32, 25, 2, 0, bul.bluamulet, c_red);
				c_shoot(-32, 125, 2, 0, bul.bluamulet, c_red);
				c_shoot(-32, 225, 2, 0, bul.bluamulet, c_red);
				c_shoot(-32, 325, 2, 0, bul.bluamulet, c_red);
		
				c_shoot(322, 75, 2, 180, bul.bluamulet, c_red);
				c_shoot(322, 175, 2, 180, bul.bluamulet, c_red);
				c_shoot(322, 275, 2, 180, bul.bluamulet, c_red);
				c_shoot(322, 375, 2, 180, bul.bluamulet, c_red);
			}
			*/
		}
	}
	
	//OK FOR THIS SURVIVAL SPELL TAKE AWAY THE ABILITY TO SHOOT
	
	inv = true
		
	x = sin(count/80)*120+WIDTH/2;
	y = cos(count/80)*120+HEIGHT/2;
		
	/*if count > 50 and count < 550 {
		
	}*/
		
}, 999999999, 101, "mokou", SPELL.CARD, DIFFICULTY.HARD, "...And So We Continued to \n Stay on This Beautiful Earth", u, u, function() {
	textbox_create(txt_kagumokuend, global.textzpix);
});

nu shootman("earf", s_earf);


global.spelltiming = false;