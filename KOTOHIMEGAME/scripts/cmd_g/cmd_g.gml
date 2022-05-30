function removeItemCommand(args){
	if(args[0] == string(string_digits(args[0]))){ //if the argument is a number
		c_removeitem(string_digits(args[0]));
		log("Removed item " + c_getitembyid(string_digits(args[0])).name + "!");
	}
	else{
		var itemName = ""
		for(var i = 0; i < array_length(args);i++){
			itemName+= " " + string(args[i]);
		}
		itemName = string_delete(itemName,1,1);
		var possibleItems = []
		for(var i = 0; i < ITEMS.SIZE; i++){
			if(string_contains(string_lower(c_getitembyid(i).name),string_lower(itemName))){
				log("added" + string(i));
				array_push(possibleItems,i)
			}
		}
		if(array_length(possibleItems) == 0)
		return "could not find item"
		if(array_length(possibleItems) == 1){
			c_removeitem(possibleItems[0]);
			return "Removed item" + c_getitembyid(possibleItems[0]).name + "!";	
		}
		log("Too many items with that name!, pick:")
		foreach(possibleItems,function(item){
			log(c_getitembyid(item).name);
		});
	}
}

function giveItemCommand(args){
	if(args[0] == string(string_digits(args[0]))){ //if the argument is a number
		c_additem(string_digits(args[0]));
		log("Gave player " + c_getitembyid(string_digits(args[0])).name + "!");
	}
	else{
		var itemName = ""
		for(var i = 0; i < array_length(args);i++){
			itemName+= " " + string(args[i]);
		}
		itemName = string_delete(itemName,1,1);
		var possibleItems = []
		for(var i = 0; i < ITEMS.SIZE; i++){
			if(string_contains(string_lower(c_getitembyid(i).name),string_lower(itemName))){
				log("added" + string(i));
				array_push(possibleItems,i)
			}
		}
		if(array_length(possibleItems) == 0)
		return "could not find item"
		if(array_length(possibleItems) == 1){
			c_additem(possibleItems[0]);
			return "Gave player " + c_getitembyid(possibleItems[0]).name + "!";	
		}
		log("Too many items with that name!, pick:")
		foreach(possibleItems,function(item){
			log(c_getitembyid(item).name);
		});
	}
}
a = new consoleCommand("g","null",giveItemCommand);
nu consoleCommand("give", "null", giveItemCommand);

nu consoleCommand("r","null",removeItemCommand);