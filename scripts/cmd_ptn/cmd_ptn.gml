nu consoleCommand("ptn", "pattern (name)", function(arg) {
	with o_roommanager {
		var spellname = "";
		for (var i=0; i<array_length(arg); i++) {
			spellname += " " + string(arg[i]);
		}
		spellname = string_lower(string_delete(spellname,1,1));
		log(spellname);
		global.myshits = spellname;
		var possiblespells = []
		var dudes = [];
		ds_map_keys_to_array(global.spellnames, dudes);
		for(var i = 0; i < array_length(dudes); i++){
			if(string_contains(string_lower(dudes[i]),spellname)){
				log("added" + dudes[i]);
				array_push(possiblespells,dudes[i])
			}
		}
		if(array_length(possiblespells) == 0)
		return "no such spell!"
		if(array_length(possiblespells) == 1){
			global.myshits = possiblespells[0];
		} else {
			log("multiple such spells! pick:")
			foreach(possiblespells,function(spell){
				log(spell);
			});
			return
		}
		
		if(is_struct(global.spellnames[?global.myshits])) {
			c_addfakeroom(new cell(ROOMTYPE.BOSS, u, u, u, u, function() {
				global.spells[global.difficulty].touhou = [global.spellnames[?global.myshits]];
				c_makeboss(global.bosses.touhou, [SPELL.CARD], global.difficulty);
			}));
			var returnable = "patterned";
		} else {
			log("not a real attack name " + spellname);
			log("this should never happen");
			var returnable = "unpatterned";
		}
		rooms[0][1].cleared = false;
		
		c_moveroom(rooms[0][1]);
		instance_destroy(o_textbox);
		ISAAC.state = st_standard;
		return returnable;
	}
});

global.myshits = "";
//LMAO sorry scope you know how it is