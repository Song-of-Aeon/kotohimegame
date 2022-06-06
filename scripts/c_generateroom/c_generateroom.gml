/*

function c_generateroom(type) {
	switch type {
		case ROOMTYPE.TIME:
			//return global.timerooms[irandom(array_length(global.timerooms)-1)];
			var buit = global.timerooms[irandom(array_length(global.timerooms)-1)];
			//log(buit.time, buit.type, buit.pickuptype, buit.step, buit.pool, buit.create, buit.draw);
			return new cell(buit.time, ROOMTYPE.TIME, buit.pickuptype, buit.step, buit.pool, buit.create, buit.draw);
			
			break;
		case ROOMTYPE.SHOP:
			var buit = global.shoprooms[0];
			return new cell(buit.shopkeep, ROOMTYPE.SHOP, buit.pickuptype, buit.step, buit.pool, buit.create, buit.draw);
			break;
		case ROOMTYPE.MINIBOSS:
			if false {
			var buit = global.minibossrooms[1];
		} else {
			var buit = global.minibossrooms[0];
		}
			return new cell(buit.time, ROOMTYPE.MINIBOSS, buit.pickuptype, buit.step, buit.pool, buit.create, buit.draw);
			//return global.bossrooms[stage-1];
			break;
		case ROOMTYPE.BOSS:
		if false {
			var buit = global.bossrooms[1];
		} else {
			var buit = global.bossrooms[0];
		}
			
			return new cell(buit.time, ROOMTYPE.BOSS, buit.pickuptype, buit.step, buit.pool, buit.create, buit.draw);
			//return global.bossrooms[stage-1];
			break;
		case ROOMTYPE.TREASURE:
			var buit = global.treasurerooms[irandom(array_length(global.treasurerooms)-1)];
			return new cell(buit.time, ROOMTYPE.TREASURE, buit.pickuptype, buit.step, buit.pool, buit.create, buit.draw);
			//return global.treasurerooms[irandom(array_length(global.treasurerooms)-1)];
			break;
	}
}
