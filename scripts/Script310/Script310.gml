/*function itliterallydoesntmatter() {
	return [
		new cell(1700, ROOMTYPE.TIME, PICKUPS.SHOTPOWER, munction(function() { //slide from each side
			cpp();
			if iterations < 4 {
				ncm();
				if ncmr(10, 40, 240) {
					var fary = c_makeshooter(x, y, 0, global.fairy, new pattern_ext(method(fary,patternStep),7,9999));
					
				}
				if count >= 340 {
					count = 0;
					iterations++;
				}
			}
			if iterations >= 4 c_endpattern();
		})
	]
}*/

/*
var myRoomStep = function(){
	cpp();
	if(count % 10 == 0){
		var _step = function(){
			count++;
			if(count% 20 == 0){
				c_shoot(x,y,4,point_me(),global.bulsmall,false,c_red);
			}
		}
		c_makeshooter(count % room_width,0,1,global.fairy,_step)
	}
	if(count > 1000){c_endpattern()};
}

var myRoom = new cell(ROOMTYPE.TIME,myRoomStep);
c_pushroom(DAY.THURS,0,myRoom);