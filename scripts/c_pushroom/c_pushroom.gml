function c_pushroom(day_, stage_, room) {
	//log("functing")
	//log(global.roomnames);
	
	if room.difficulty = DIFFICULTY.NULL {
		//array_push(global.room[day_][stage_][DIFFICULTY.EMPTY][room.type], room);
		array_push(global.room[day_][stage_][DIFFICULTY.EASY][room.type], room);
		array_push(global.room[day_][stage_][DIFFICULTY.NORMAL][room.type], room);
		array_push(global.room[day_][stage_][DIFFICULTY.HARD][room.type], room);
		array_push(global.room[day_][stage_][DIFFICULTY.LUNATIC][room.type], room);
		//array_push(global.room[day_][stage_][DIFFICULTY.ABSURD][room.type], room);
	} else {
		array_push(global.room[day_][stage_][room.difficulty][room.type], room);
	}
	ds_map_add(global.roomnames, room.name, room);
}

function c_pushpattern(pattern_, character_, difficulty_, type_) {
	//log("functing")
	//log(global.roomnames);
	if type_ = SPELL.CARD {
		if difficulty_ == DIFFICULTY.NULL {
			//array_push(global.room[day_][stage_][DIFFICULTY.EMPTY][room.type], room);
			array_push(variable_struct_get(global.spells[DIFFICULTY.EASY], character_), pattern_);
			array_push(variable_struct_get(global.spells[DIFFICULTY.NORMAL], character_), pattern_);
			array_push(variable_struct_get(global.spells[DIFFICULTY.HARD], character_), pattern_);
			array_push(variable_struct_get(global.spells[DIFFICULTY.LUNATIC], character_), pattern_);
			//array_push(global.room[day_][stage_][DIFFICULTY.ABSURD][room.type], room);
		} else {
			//log(variable_struct_get(global.spells[difficulty_], character_));
			array_push(variable_struct_get(global.spells[difficulty_], character_), pattern_);
			//array_push(, pattern_);
			//array_push(global.spells[DIFFICULTY.NORMAL].aunn, pattern_);
		}
	} else if type_ = SPELL.NON {
		if difficulty_ == DIFFICULTY.NULL {
			//array_push(global.room[day_][stage_][DIFFICULTY.EMPTY][room.type], room);
			array_push(variable_struct_get(global.nonspells[DIFFICULTY.EASY], character_), pattern_);
			array_push(variable_struct_get(global.nonspells[DIFFICULTY.NORMAL], character_), pattern_);
			array_push(variable_struct_get(global.nonspells[DIFFICULTY.HARD], character_), pattern_);
			array_push(variable_struct_get(global.nonspells[DIFFICULTY.LUNATIC], character_), pattern_);
			//array_push(global.room[day_][stage_][DIFFICULTY.ABSURD][room.type], room);
		} else {
			array_push(variable_struct_get(global.nonspells[difficulty_], character_), pattern_);
			//log(variable_struct_get(global.nonspells[difficulty_], character_));
			//array_push(, pattern_);
			//array_push(global.spells[DIFFICULTY.NORMAL].aunn, pattern_);
		}
	}
	ds_map_add(global.spellnames, string_lower(pattern_.name), pattern_);
}