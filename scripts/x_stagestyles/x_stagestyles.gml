global.stagestyles = ds_map_create();
/*
//c_generatestage(global.stagestyles[?"stage1a"].generation);
global.stagestyles[?"intro"] = new stage("stage ISN'T", "my ???", method(undefined, function() {
	o_roommanager.rooms[0][0] = global.cutscenerooms[0];
}));
global.stagestyles[?"ending"] = new stage("stage ISN'T", "my ???", method(undefined, function() {
	o_roommanager.rooms[0][0] = global.cutscenerooms[1];
}));
/*
global.stagestyles[?"stage1a"] = new stage("stage ONE", "my favorite one", method(undefined, function() {
	o_roommanager.currentroom = 0;
	o_roommanager.mappos.x = 0;
	o_roommanager.rooms[0][0] = global.cutscenes[0]; //startroom
	var madeshop = 0;
	var madetreasure = false;
	var shops = 5;
	var length = 7;
	var maxwidth =  5;
	var i;
	var j;
	while madeshop < shops {
		madeshop = 0;
		madetreasure = false;
		for(i=0; i<length; i++) {
			//var width = irandom(maxwidth-1)+2;
			var width = maxwidth-i%2;
			for(j=0; j<width; j++) {
				if i=floor(length/2) {
					rooms[i+1][j] = c_generateroom(ROOMTYPE.MINIBOSS);
				} else {
					if madeshop < shops {
						if irandom(8) = 4 {
							roomtype = ROOMTYPE.SHOP;
						} else {
							roomtype = ROOMTYPE.TIME;
						}
					} else {
						roomtype = ROOMTYPE.TIME;
					}
					rooms[i+1][j] = c_generateroom(roomtype);
					switch roomtype {
						case ROOMTYPE.SHOP:
							madeshop++;
							break;
					}
				}
			}
		}
	}
	o_roommanager.rooms[length+1][0] = c_generateroom(ROOMTYPE.BOSS); //bossroom
}));

global.stagestyles[?"stage2a"] = new stage("stage TWO", "i hate this one", method(undefined, function() {
	o_roommanager.currentroom = 0;
	o_roommanager.mappos.x = 0;
	o_roommanager.rooms[0][0] = c_generateroom(ROOMTYPE.BOSS); //startroom
	//global.stagetwod = true;
	audio_stop_all() audio_play_sound(m_stage2,0,true) //LOL
	var madeshop = 0;
	var madetreasure = false;
	var  shops = 5;
	var length = 9;
	var maxwidth =  5;
	var i;
	var j;
	while madeshop < shops {
		madeshop = 0;
		madetreasure = false;
		for(i=0; i<length; i++) {
			//var width = irandom(maxwidth-1)+2;
			var width = maxwidth-i%2;
			for(j=0; j<width; j++) {
				if i=floor(length/2) {
					rooms[i+1][j] = c_generateroom(ROOMTYPE.MINIBOSS);
				} else {
					if madeshop < shops {
						if irandom(8) = 4 {
							roomtype = ROOMTYPE.SHOP;
						} else {
							roomtype = ROOMTYPE.TIME;
						}
					} else {
						roomtype = ROOMTYPE.TIME;
					}
					rooms[i+1][j] = c_generateroom(roomtype);
					switch roomtype {
						case ROOMTYPE.SHOP:
							madeshop++;
							break;
					}
				}
			}
		}
	}
	o_roommanager.rooms[length+1][0] = c_generateroom(ROOMTYPE.BOSS); //bossroom
	//global.stagetwod = true;
}));


function stage(name_, description_, generation_=c_generatestagegeneric) constructor {
	name = name_;
	description = description_;
	generation = generation_;
}