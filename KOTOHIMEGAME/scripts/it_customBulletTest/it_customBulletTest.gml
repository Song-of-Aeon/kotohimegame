//gen u items

itemgen({
	onstep: function(player=global.me) {
		
	},
	ondraw: function(){
		repeat(100000){
			draw_sprite(s_bullet	,0,random_range(0,360),random_range(0,360))
		}
	},
	name: "BulletTest",
	description: "Custom bullet type using structs?",
	tooltip: "the baby",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	deathbombable: false,
	used: false,
}, ITEMS.BULLETSTEST);