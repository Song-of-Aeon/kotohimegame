global.cache = {
	load: function(name,vformat){
		if(ds_map_exists(theCache,name)){
			return theCache[?name];	
		}
		else{
			var buff = buffer_load(name);
			var vbuff = vertex_create_buffer_from_buffer(buff, vformat);
			theCache[?name] = vbuff;
			return theCache[?name];
		}
	},
	clear: function(){
		ds_map_clear(theCache);	
	},
	theCache: ds_map_create(),
}

nu consoleCommand("clearCache","clears vertex buffer cache causing models to reload",function(){global.cache.clear()});