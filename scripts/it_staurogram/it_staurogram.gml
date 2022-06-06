//gen u items

itemgen({
	asactive: function(player=global.me, press, held, released) {
		if press && charge >= chargereq && !going {
			going = true;
			bombx = player.x;
			bomby = player.y;
			charge -= chargereq;
			bam = 5;
			vspd = 3;
		}
		if going = 1 {
			bomby += vspd;
			vspd -= .15;
			bam += .2;
			c_clearradius(bombx, bomby, bam);
			if vspd <= -8 {
				going++;
				c_screenshake(6, 120);
			}
		} else if going = 2 {
			c_clearrect(bombx-15, bomby-60, bombx+15, bomby+120);
			c_clearrect(bombx-60, bomby-15, bombx+60, bomby+15);
			count++;
		}
		if count >= 120 {
			going = false;
			count = 0;
			bombat = 0;
		}
	},
	ondraw: function(player=global.me) {
		if going = 1 {
			draw_circle(bombx, bomby, bam, false);
		} else if going = 2 {
			//shader_set(z_chromaticAbberation);
			gpu_set_blendmode(bm_add);
			draw_set_alpha(1);
			var range = abs(12-(count/10));
			var color = 255
			
			repeat(3){
				draw_set_color(color)
				var offsetX = random_range(-range,range)
				var offsetY = random_range(-range,range)
				draw_rectangle(bombx-15 + offsetX, bomby-60+offsetY, bombx+15 + offsetX, bomby+120+offsetY, false);
				draw_rectangle(bombx-60+offsetX, bomby-15+offsetY, bombx+60+offsetX, bomby+15+offsetY, false);
				color = color << 8;
				//log(c_red);
				//log(c_green);
				//log(c_blue);
				log(c_green == $00ff00)
				//log("lol");
				
			}
			gpu_set_blendmode(bm_normal)
			//shader_reset();
		}
	},
	onroomclear: function() {
		charge++;
	},
	name: "AMEA Type Staurogram",
	description: "christianity? in touhou??? well you see pc98 actually features many abrahamic motifs and",
	tooltip: "Intimidating imitation",
	sprite: s_staurogram,
	quality: 7,
	usage: ITTYPE.ACTIVE,
	bombx: 0,
	bomby: 0,
	vspd: 0,
	going: false,
	count: 0,
	bam: 0,
	
	charge: 9,
	chargemax: 9,
	chargereq: 3,
	deathbombable: false,
	used: false,
	powerdata: 4,
	capacitydata: 3,
	utilitydata: 1,
	activetype: ACTIVES.BOMB
}, ITEMS.STAUROGRAM);