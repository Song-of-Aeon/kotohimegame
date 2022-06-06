/// @description Insert description here
// You can write your code in this editor
particles = []

deadparticles = 0;
function particle_gccollect(){
	var surfaces = [application_surface,global.surfaces.screen2,global.surfaces.HUD,global.surfaces.bg,global.surfaces.map,global.surfaces.border]
	
	//for(var j = array_length(particles)-1; j >=0;j--){
	for(var j = 0; j < array_length(surfaces);j++){
		if(surfaces[j] > array_length(particles)) break;
		for(var i = array_length(particles[surfaces[j]])-1; i >= 0; i--){
			if(particles[surfaces[j]][i].dead){
				//delete particles[i]
				array_delete(particles[surfaces[j]],i,1);
			}
		}
	}
	//log(string(deadparticles) + " has been collected from particle gc!")
	deadparticles = 0;
}

function add_particle(part){
	if(array_length(particles) <= part.surface){
		array_resize(particles,part.surface+1);
		for(var i = 0; i <= part.surface;i++){
			if(!is_array(particles[i])){
				particles[i] = [];	
			}
		}
	}
	array_push(particles[part.surface],part);
	
}

var a = new consoleCommand("draw","draw 1/0",function(args){with(all) visible = real(args[0])});