global.tags = ds_map_create();

function tag(tagid, objectid=id) {
	if !ds_map_exists(global.tags, tagid) {
		global.tags[?tagid] = [];
	}
	array_push(global.tags[?tagid], objectid);
}

function with_tag(tag_, function_) {
	var j;
	for (j=0; j<array_length(global.tags[?tag_]); j++) {
		with global.tags[?tag_][j] method(global.tags[?tag_][j], function_)();
	}
}

function tag_clear(tag_) {
	global.tags[?tag_] = [];
}

/*function 日本語() {
	
}*/