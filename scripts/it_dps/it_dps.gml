//gen u items

itemgen({
	onstep: function(player=global.me) {
		var i;
		total = 0;
		for (i=0; i<array_length(damages); i++) {
			total += damages[i];
			damages[i] -= damagessaved[i]/60;
			if !damages[i] {
				array_delete(damages, i, 1);
				array_delete(damagessaved, i, 1);
			}
		}
		if nam(global.count, 30) updatedtotal = total;
	},
	onenemyhit: function(enemy, boulet) {
		/*log("IM PUSHING");
		log(enemy);
		
		log(object_get_name(enemy.object_index));
		log(object_get_name(boulet.object_index));
		log(boulet.sprite_index);*/
		array_push(damages, boulet.damage);
		array_push(damagessaved, boulet.damage);
	},
	ondraw: function() {
		draw_text(0, global.gh-10, updatedtotal);
	},
	name: "dps counter",
	description: "wosh u soul",
	tooltip: "nice",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	
	damages: [],
	damagessaved: [],
	updatedtotal: 0,
	total: 0,
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS._DPS);