function function_append(func, func2){
	return munction(function() {
		func();
		func2();
	})
}

//probably does not work i messed it up lol