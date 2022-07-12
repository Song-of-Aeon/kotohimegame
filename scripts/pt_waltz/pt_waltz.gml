nu pattern_ext(function() {
	c;
		if count = 1 {
			
			//screen size is 290/340
			
			var moonthingy = c_makeshooter(-64, 150, 999999999, en.moon, new pattern(function() {
				c;
				
			x=lerp(x, 64, .05)
			
			if count > 300 {
				if ncm(6) {
					c_shoot(x, y, 1.1, (count+1), bul.blunaifu);
					c_shoot(x, y, 1.1, (count+60), bul.blunaifu);
					c_shoot(x, y, 1.1, (count+120), bul.blunaifu);
					c_shoot(x, y, 1.1, (count+180), bul.blunaifu);
					c_shoot(x, y, 1.1, (count+240), bul.blunaifu);
					c_shoot(x, y, 1.1, (count+300), bul.blunaifu);
					}
				}
				
			}))
				moonthingy.escapedistance = 200
				
			var sunthingy = c_makeshooter(354, 150, 999999999, en.sun, new pattern(function() {
				c;
				x=lerp(x, 226, .05)
				
				if count > 300 {
					if ncm(8) {
						
						c_shootlaser(x, y, 2.2, (count-60), 6, 100, las.sunlazer);
						c_shootlaser(x, y, 2.2, (count-240), 6, 100, las.sunlazer);
						c_shootlaser(x, y, 2.2, (-count-60), 6, 100, las.sunlazer);
						c_shootlaser(x, y, 2.2, (-count-240), 6, 100, las.sunlazer);
						
					}
				}
					
				}))
				
				sunthingy.escapedistance = 200

		}


		if count > 100{
			if ncm(120) {
				c_shootlaser(x, y, 2.5, point_me()-8, 6, 100, las.lazerred, c_red);
				c_shootlaser(x, y, 2.5, point_me()+8, 6, 100, las.lazerred, c_red);
				c_shootlaser(x, y, 2.5, point_me()-16, 6, 100, las.lazerred, c_red);
				c_shootlaser(x, y, 2.5, point_me()+16, 6, 100, las.lazerred, c_red);
				c_shootlaser(x, y, 2.5, point_me()-32, 6, 100, las.lazerred, c_red);
				c_shootlaser(x, y, 2.5, point_me()+32, 6, 100, las.lazerred, c_red);
			}
			
			/*
			if ncm(90) {	
				c_shoot(x, y, 1, point_me(), bul.bigerboolit, c_red, function() {
					if spd < 2 {spd+=.05}
					if spd >= 2 and spd < 6 {spd+=.2}
				});
				
			}
			
			*/
				if ncm(6) {
					var i;
					for (i=0; i<4; i++)
					c_shoot(x, y, 4, sin(count/42)*6+i*60, bul.smoolboolit, c_red);
				}			
		}	
}, 888, 60, "mokou", SPELL.CARD, DIFFICULTY.HARD, "Waltz of the Moon and Sun", u, u, function() {
	textbox_create(txt_kagumokumid2, global.textzpix);
});


nu shootman("moon", s_moon)

	//if count > 300 {
	//}

nu shootman("sun", s_sun)