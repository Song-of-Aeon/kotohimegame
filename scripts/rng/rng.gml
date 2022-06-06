//based? based_on what?
function RNG(based_on) constructor{
	function next(modulo = undefined){
		value = incrementSeed(value);
		if(modulo != undefined){
			if(modulo == -1)
				return 0;
			var a = (value%(modulo+1));
			//log(a)
			return a;
		}
		else{
			return value-1;
		}
	}
	value = based_on.value;
	value_orig = value;
	return self;
}

function incrementSeed(num){
	return ((((num * 25214903917)+11) % (2<<48) & 140737488354304)>>10) ; //the numbers here are not important
}
global.seed = {value: 1337} //since rng objects require another rng object in their constructor, we make a fake one as the starting rng object.

global.rngs = {
	statdrops : new RNG(global.seed),
	itemdrops: new RNG(global.seed),
	
}

//gml_release_mode(true);