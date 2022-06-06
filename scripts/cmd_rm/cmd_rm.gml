nu consoleCommand("hp", "hp (value)", function(value){ISAAC.hp = real(value[0]) return "hp set to "+value[0]});
nu consoleCommand("rm", "rm (type, position)/(name))", function(arg) {
	with o_roommanager {
		if(arg[0] == string(string_digits(arg[0]))){ //if the argument is a number
			c_addfakeroom(global.room[global.currentday][global.currentstage][global.difficulty][arg[0]][arg[1]]);
		} otherwise {
			var roomname = ""
			for(var i = 0; i < array_length(arg);i++){
				roomname += " " + string(arg[i]);
			}
			roomname = string_delete(roomname,1,1);
			if(is_struct(global.roomnames[?roomname]))
				c_addfakeroom(global.roomnames[?roomname]);
			else
				log("not a real room name " + roomname);
		}
		//rooms[0][1].cleared = false;
		c_moveroom(rooms[0][1]);
		instance_destroy(o_textbox);
		ISAAC.state = st_standard;
		return "moved";
	}
});