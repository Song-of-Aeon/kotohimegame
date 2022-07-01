nu pattern_ext(function() {
	c
	if count = 1 {
		ISAAC.x=145
		ISAAC.y=240
	}
	
	if count > 20 {
		
		if ncm(40) {
				
				c_shoot(x, y, 3, point_me(), bul.smolerboolit);
				c_shoot(x, y, 3, point_me()+20, bul.smolerboolit);
				c_shoot(x, y, 3, point_me()-20, bul.smolerboolit);
				c_shoot(x, y, 3, point_me()+24, bul.smolerboolit);
				c_shoot(x, y, 3, point_me()-24, bul.smolerboolit);
				c_shoot(x, y, 3, point_me()+28, bul.smolerboolit);
				c_shoot(x, y, 3, point_me()-28, bul.smolerboolit);
				c_shoot(x, y, 3, point_me()+32, bul.smolerboolit);
				c_shoot(x, y, 3, point_me()-32, bul.smolerboolit);
				c_shoot(x, y, 3, point_me()+36, bul.smolerboolit);
				c_shoot(x, y, 3, point_me()-36, bul.smolerboolit);
		}
	}
	
	
	if ncm(6) {
					var i;
					for (i=0; i<4; i++)
					c_shootlaser(x, y, 6, sin(count/42)*6+i*60, 10, 128, las.lazerred);
	}
	
	
	
//	if ncm(40){
//		c_shootcircle(x, y-50, 2.5, seed.next(360), 24, bul.smolerboolit);
//		}
	
	
	
	if count > 110 and count < 200{
		x = lerp(x, 200, 0.2);
		y = lerp(y, 80, 0.2);
		
		//in this part is where she SPEENS
	}
	
		if ncm(39){
			meposx = ISAAC.x
			meposy = ISAAC.y	
		}
		
		
	
	
			if ncm(40) {
				/*
				c_shoot(x, y, 2, point_me(), bul.blunaifu, u, function(){
					c
					if count > 70 and count < 100 {
						spd = 0
						}
					
					if count > 100 and count < 130{
					dir = point_me();
					spd = 1
					
					if count = 130 {
					dir = point_me();
					
					}
					
					}
					
				});
				*/
				
				
				c_shoot(x, y, 2, point_me()+16, bul.blunaifu, u, function(){
					c
					if count > 170 and count < 200 {
						spd = 0
						}
					
					if count > 200 and count < 230{
					dir = point_me();
					spd = 1
					
					if count = 230 {
					dir = point_me();
					
					}
					
					}
					
					});
				
				c_shoot(x, y, 2, point_me()-16, bul.blunaifu, u, function(){
					c
					if count > 170 and count < 200 {
						spd = 0
						}
					
					if count > 200 and count < 230{
					dir = point_me();
					spd = 1
					
					if count = 230 {
					dir = point_me();
					
					}
					
					}
					
					});
				
				c_shoot(x, y, 2, point_me()+32, bul.blunaifu, u, function(){
					c
					if count > 170 and count < 200 {
						spd = 0
						}
					
					if count > 200 and count < 230{
					dir = point_me();
					spd = 1
					
					if count = 230 {
					dir = point_me();
					
					}
					
					}
					
					});
				c_shoot(x, y, 2, point_me()-32, bul.blunaifu, u, function(){
					c
					if count > 170 and count < 200 {
						spd = 0
						}
					
					if count > 200 and count < 230{
					dir = point_me();
					spd = 1
					
					if count = 230 {
					dir = point_me();
					
					}
					
					}
					
					});
				
				
				}
				
	
	if count = 250{
	
	c_shootlaser(5, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(15, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(25, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	}
	
	if count = 260{
	
	c_shootlaser(35, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(45, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(55, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	}
	
	if count = 270{
	
	c_shootlaser(65, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(75, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(85, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	}
	
	if count = 280{
	
	c_shootlaser(95, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(105, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(115, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	}
	
	if count = 290{
	
	c_shootlaser(125, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(135, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(145, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	
	}
	
	if count > 350 and count < 400{
		x = lerp(x, 90, 0.2);
		y = lerp(y, 80, 0.2);
		//SPEEN here too obvs
		
		
	}
	
	if count = 450{
	
	c_shootlaser(285, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(275, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(265, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	}
	
	if count = 460{
	
	c_shootlaser(255, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(245, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(235, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	}
	
	if count = 470{
	
	c_shootlaser(225, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(215, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(205, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	}
	
	if count = 480{
	
	c_shootlaser(195, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(185, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(175, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	}
	
	if count = 490{
	
	c_shootlaser(165, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(155, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	c_shootlaser(145, 0, 2, 270, 10, 256, las.lazerred, u, function() {spd+=0.5});
	
	}
	
	if count = 550{count=101};
	
		//put this on the bigass lazors on the side of the screen mokou aint on
			
	
}, 600, 100, "touhou", SPELL.CARD, DIFFICULTY.HARD, "Cycle of Death and Rebirth");

nu shootman("familiar", s_reimu);