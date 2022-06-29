nu pattern_ext(function() {
	c;
	
	if count = 1 {
		ISAAC.x=145
		ISAAC.y=240
	}
	
	
	
	if ncm(30){
		c_shoot(-32, sin(count/60)*40+0, 2, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+50, 2, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+100, 2, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+150, 2, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+200, 2, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+250, 2, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+300, 2, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+350, 2, 0, bul.bluamulet, c_red);
		
		
		c_shoot(322, sin(count/60)*40-25, 2, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+25, 2, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+75, 2, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+125, 2, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+175, 2, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+225, 2, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+275, 2, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+325, 2, 180, bul.bluamulet, c_red);
		
		//c_shoot(322, sin((count+180)/60)*170+165, 2+random(1), 180, bul.smolerboolit, c_purple);

	}
	
	if count = 3 {
		meposx = ISAAC.x
		meposy = ISAAC.y	
	}
		
	
	if count > 120 and count < 400 {
		x = lerp(x, meposx, .03);
		y = lerp(y, meposy, .03);
	}
			
	if count = 400 {
		mokoboomposx = x
		mokoboomposy = y
			
	}
	if count = 401 {
		var boom = c_shootcircle(mokoboomposx, mokoboomposy, 3, seed.next(360), 50, bul.smolerboolit);
		boom.escapedistance = 20;
	}
			
	if count = 402 {
		x = lerp(x, 6000, 1);
		y = lerp(y, 6000, 1);
	}
	//if count >= 100 and count < 200
	//&& means and
			
	if count = 402 {
		x = lerp(x, x, 1);
		y = lerp(y, y, 1);
	}
			
			
	if count = 600 {
		x = lerp(x, mokoboomposx, 1);
		y = lerp(y, mokoboomposy, 1);
	}
	if count = 601{count = 2}
		/*
		if count = 6{
			
			
		x = lerp(x, mokoboomposx, 1);
		y = lerp(y, mokoboomposy, 1);
		}
		*/
	
//	x = lerp(x, ease_inoutsine(count, 200)*230+30, .1);
//	y = lerp(y, ease_inoutsine(count, 200)*70+40, .1);
//    y = lerp(y, 40, .05);
	
	

	
}, 600, 100, "mokou", SPELL.CARD, DIFFICULTY.HARD, "1000 Years of Hatred", function() {
	meposx = ISAAC.x
	meposy = ISAAC.y});

//static meposx = ISAAC.x;
//	static meposy = ISAAC.y;

