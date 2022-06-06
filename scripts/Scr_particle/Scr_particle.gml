function Particle(x,y,draw = function(){},blendmode = bm_normal,group = noone,dir = random_range(0,360),spd = 0,grav = 0,surface = application_surface) constructor{
	if(!instance_exists(o_particlemanager)){
		instance_create(0,0,o_particlemanager);
	}
	//array_push(o_particlemanager.particles,self);
	self.dead = false;
	self.x = x;
	self.y = y;
	self.draw = munction(draw);
	self.blendmode = blendmode;
	self.group = group;
	self.dir = dir;
	self.spd = spd;
	self.grav = grav;
	self.die = function(){
		self.dead = true;
		o_particlemanager.deadparticles++;
	}
	self.surface = surface
	self.update = function(){
		var xspd = dcos(dir)*spd;
		var yspd = dsin(dir)*spd;
		yspd +=grav/100;
		x += xspd;
		y += yspd;
		self.dir = darctan2(yspd,xspd);
		self.spd = sqrt(sqr(xspd)+sqr(yspd));
		if(is_oob(11)) die()
		
	}
	o_particlemanager.add_particle(self);
}

function create_particle_simple(x,y,sprite){
	function drawFunc(){
		gpu_set_blendmode(blendmode)
		draw_set_alpha(0.1)
		draw_sprite(sprite,0,x,y);
		draw_set_alpha(1)
		//update()
	}
	var part = new Particle(x,y,drawFunc,bm_add,noone,random_range(0,360),random_range(1,2)/20,1/20);
	part.sprite = sprite
	return part
}

function create_particle_hole(x,y,size){
	function drawFunc(){
		draw_set_color($009999)
		//surface_set_target(global.surfaces.screen2)
		draw_circle(x,y,size,false);
		//surface_reset_target()
		//update()
	}
	var part = new Particle(x,y,drawFunc,bm_add,noone,random_range(0,360),random_range(1,2)/20,1/20);
	part.size = size
	return part;
}