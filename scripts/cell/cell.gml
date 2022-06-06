//@function(ROOMTYPE,PICKUPS,

//PICKUPTYPE = ROOMRNG
function cell(type_=ROOMTYPE.GENERAL, step_=c_null, difficulty_=global.difficulty, weight_ = 1, pool_=POOLS.MICHAEL, create_=c_null, draw_=c_null, clear_=c_null, shopkeep_=global.shop.null, name_="untitled") constructor {
	create = munction(create_);
	step = munction(step_);
	draw = munction(draw_);
	clear = munction(clear_);
	bullets = global.bullets;
	las = global.lasers;
	hitscans = global.hitscans;
	chains = global.chains;
	enemies = global.enemies;
	//time = 9999;
	shopkeep = shopkeep_;
	if is_struct(pool_) {pool = pool_} else {
		//log(pool_)
		pool = getPool(pool_);
		if(pool_ != POOLS.RAIN){
			//log(pool);
			//log(pool_);
		}
		//log(pool);
	}
	//log(pool);
	difficulty = difficulty_;
	weight = weight_;
	pickuptype = PICKUPS.NULL;
	if (instance_exists(o_roommanager) && type_ == ROOMTYPE.TIME) {
		pickuptype = o_roommanager.stageRNG.next(4)+1;
	}
	difficulty = difficulty_;
	count = 0;
	iterations = 0;
	type = type_;
	connections = ["UNCONNECTED"];
	accessible = false;
	traveled = false;
	cleared = false;
	warptarget = self;
	name = name_;
	x = 0;
	y = 0;
	j = 0;
	k = 0;
}

enum ROOMTYPE {
	NULL,
	TIME,
	CIRCLE,
	SHOP,
	BLACK,
	WARP,
	MINIBOSS,
	BOSS,
	GENERAL,
	
	#region size
	SIZE
	#endregion
}