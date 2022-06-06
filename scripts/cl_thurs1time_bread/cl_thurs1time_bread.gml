var BigWave = function(){
	var thePattern = new pattern(
	function(){
		//hspd*= acc;
		vspd += 0.05;
	},
	function(){
	acc = (29/30);	
	hspd = x=0?3:-3;
	});
	var bigFairyPattern = new pattern(
	function(){
		cpp();
		vspd *= (29/30);
		var inc = 56;
		rotato+=inc;
		if(count > 100 && count < 250){
			c_shootfan(x,y,5,rotato,rotato+inc,5,5,global.bullets.small,c_white,function(){cpp() if(count > 10){spd = 1}})
		}
		if(count > 400){
			if(ncm(40)){
				c_shootfan(x,y,2,point_me()-20,point_me()+20,10,5,global.bullets.small);	
			}
		}
	},
	function(){
		rotato = 0;
		vspd = 1.5;
	});
	count++;
	if(count < 150){
		if(ncm(30)){
			c_makeshooter(0,50,1,global.enemies.fairy,thePattern);
			c_makeshooter(room_width,50,3,global.enemies.fairy,thePattern);
		}
	}
	if(count == 175){
		c_makeshooter(room_width/2, 0,100,global.enemies.fairy,bigFairyPattern);
	}
	if(count > 400 && count < 550){
		if(ncm(30)){
			c_makeshooter(0,50,1,global.enemies.fairy,thePattern);
			c_makeshooter(room_width,50,3,global.enemies.fairy,thePattern);
		}
	}
	if(count > 600){
		return 250;
	}
}

var mine = new cell(ROOMTYPE.TIME,BigWave,DIFFICULTY.NULL);
mine.name = "fart balls";
c_pushroom(DAY.THURS,0,mine);
var CircleWave = function(){
	c;
	if(ncm(40)){
		c_makeshooter(ncm(80)?global.gw:0,40,3,global.enemies.fairy,new pattern(
		function(){
			if(!count){
				x+=ncm(80)?-1:1;
				if(abs(global.me.x - x) < 10)
				c
			}
			else{
				c
				if(ncm(10))
					c_shoot(x,y,10,point_me()+((seed.next()%10)-5),global.bullets.big,c_white,function(){c; if(count > 7) spd = 1.5});
			}
		}));
	}
	if(count == 40 || count == 120){
		c_makeshooter(0,40, 60,global.enemies.magicfairy,new pattern(
		function(){
			c;
			if(count > 30){
				if(ncm(10)){
					c_shoot(x,y,10,point_me()+((seed.next()%10)-5),global.bullets.big,c_white,function(){c; if(count > 7) spd = 1.5});
				}
			}
		},
		function(){
			hspd = 10;
			acc = 28/30;
		}
		));
		if(ncm(40)){
			
		}
	}
	if(count > 1000){
		return 100;
	}
}
mine = new cell(ROOMTYPE.TIME,CircleWave,DIFFICULTY.NULL);
mine.name = "circle";
c_pushroom(DAY.THURS,0,mine);

texture_debug_messages(true);