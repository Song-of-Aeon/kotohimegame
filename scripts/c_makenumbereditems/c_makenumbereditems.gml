//kind of like getitemcount, but makes a list of all of your items and the amounts for each in a struct.
function makeNumberedItems(list){
	var i;
	var mynumbereditems = ds_list_create();
	for(i=0; i<ds_list_size(list); i++) {
		var isThere = -1;
		for(var j = 0; j < ds_list_size(mynumbereditems);j++){
			if(list[|i] == mynumbereditems[|j].item) {
				isThere = j; 
				break;
				}			
		}
		if(isThere == -1) {
			ds_list_add(mynumbereditems,{item:list[|i],amount:1});
		}
		else{
			mynumbereditems[|isThere].amount++;
		}
	}
	return mynumbereditems;
}

function makeNumberedItemsa(array){
	var i;
	var mynumbereditems = array_create(0);
	for(i=0; i<array_length(array); i++) {
		var isThere = -1;
		for(var j = 0; j < array_length(mynumbereditems);j++){
			if(array[i] == mynumbereditems[j].item) isThere = j;
		}
		if(isThere == -1) {
			array_insert(mynumbereditems,array_length(mynumbereditems),{item:array[i],amount:1});
		}
		else{
			mynumbereditems[isThere].amount++;
		}
	}
	return mynumbereditems;
}