nu pattern_ext(function() {
	c;
	
	if count = 1 {
		ISAAC.x=145
		ISAAC.y=240
	}
	
			//screen size is 290/340
	
	
	if ncm(42){
		c_shoot(-32, sin(count/60)*40+0, 2.5, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+50, 2.5, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+100, 2.5, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+150, 2.5, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+200, 2.5, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+250, 2.5, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+300, 2.5, 0, bul.bluamulet, c_red);
		c_shoot(-32, sin(count/60)*40+350, 2.5, 0, bul.bluamulet, c_red);
		
		
		c_shoot(322, sin(count/60)*40-25, 2.5, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+25, 2.5, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+75, 2.5, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+125, 2.5, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+175, 2.5, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+225, 2.5, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+275, 2.5, 180, bul.bluamulet, c_red);
		c_shoot(322, sin(count/60)*40+325, 2.5, 180, bul.bluamulet, c_red);
		
		
		
		
		
		
		
		//c_shoot(322, sin((count+180)/60)*170+165, 2+random(1), 180, bul.smolerboolit, c_purple);

	}
	
	if count = 3 {
		meposx = ISAAC.x
		meposy = ISAAC.y	
	}
	
	if count = 60{
		meposx = ISAAC.x
		meposy = ISAAC.y	
	}
	//once this happens
	//SPEEN
	
	
	if count > 60 and count < 200 {
		x = lerp(x, meposx, .03);
		y = lerp(y, meposy, .03);
	}
			
			
	if count = 200 {
		mokoboomposx = x
		mokoboomposy = y
			//STOP SPEENING ONLY WHEN SHE EXPLODES
	}
	if count = 201 {
		var boom = c_shootcircle(mokoboomposx, mokoboomposy, 3, seed.next(360), 90, bul.bigerboolit, u, function() {
			c;
			
			if count = 30 {instance_destroy()}			
			
			});

	}
			
	if count = 202 {
		x = lerp(x, 6000, 1);
		y = lerp(y, 6000, 1);
		x = lerp(x, x, 1);
		y = lerp(y, y, 1);
	}
			
			//do not SPEEN here
			
	if count = 333 {
		x = lerp(x, mokoboomposx, 1);
		y = lerp(y, mokoboomposy, 1);
	}
	if count = 350{count = 2}
		/*
		if count = 6{
			
			
		x = lerp(x, mokoboomposx, 1);
		y = lerp(y, mokoboomposy, 1);
		}
		*/
	
//	x = lerp(x, ease_inoutsine(count, 200)*230+30, .1);
//	y = lerp(y, ease_inoutsine(count, 200)*70+40, .1);
//    y = lerp(y, 40, .05);
	
	

	
}, 555, 60, "mokou", SPELL.CARD, DIFFICULTY.HARD, "1000 Years of Hatred", function() {
	meposx = ISAAC.x
	meposy = ISAAC.y}, u, function() {
	textbox_create(txt_kagumokumid3, global.textzpix);
});

//static meposx = ISAAC.x;
//	static meposy = ISAAC.y;

