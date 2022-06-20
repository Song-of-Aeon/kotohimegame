// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//this is to fix feather

global.scale = 2;
global.surfaces = {
	HUD: surface_create(640,360),
	bg: surface_create(310,480),
	screen2: surface_create(640,480),
	map: surface_create(290, 340),
	threedee: surface_create(1,1),
	
	gameSize: {x:290,y:340},
	//gameSize: {x:200,y:340},
	gameOffset:{x:0,y:10},
	threedeescale:1,
	borderSize: 0,
	borderSize_orig : 0,
	border: surface_create(640+60,360+60),
	skip: 0,
	skipmod: 1,
	fancy: false,
	gamePosition: {x:0,y:0},
	preDraw: function(){
		draw_set_halign(fa_left);
		//surfaces_init()
		if(global.count % 10 == 0){
			//window_frame_set_visible(false);
			//window_frame_update();
		}
		/// @description Insert description here
		// You can write your code in this editor
		if(!surface_exists(global.surfaces.HUD)){
			log("surfaces have been destroyed, regenerating...");
			surfaces_init();
		}
		surface_set_target(global.surfaces.screen2);
		draw_clear_alpha(c_black,0);
		surface_reset_target();
		surface_set_target(global.surfaces.HUD);
		draw_clear_alpha(c_white, 0);
		draw_sprite(s_black, 1, 0, 0);
		surface_reset_target();
		surface_set_target(global.surfaces.border);
        draw_sprite_stretched(tex_based,0,0,0,surface_get_width(global.surfaces.border),surface_get_height(global.surfaces.border));
        surface_reset_target()
	},
	postDraw: function(){
		
		/// @description Insert description here
		// You can write your code in this editor
		//draw_clear(c_white);
		//log(surface_get_width(application_surface));
		//draw_surface_stretched(global.surfaces.bg,(window_get_width()/2)-(surface_get_width(global.surfaces.bg)*global.scale)/4,0,310*global.scale,360*global.scale);
		//draw_clear($009999);
		
		
		var slx = borderSize * global.scale; //screen location x
		var sly = borderSize * global.scale;
		//draw_surface_stretched(application_surface,(window_get_width()/2)-((surface_get_width(application_surface)*global.scale)/2),60,310*global.scale,360*global.scale);
		/*shader_set(z_gauss13)
		var Unires = shader_get_uniform(z_gauss13,"resolution");
		var Unidir = shader_get_uniform(z_gauss13,"direction");
		var loops = 4;
		gpu_set_colorwriteenable(1,1,1,0)
		var flopSurf = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
		shader_set_uniform_f(Unires,surface_get_width(application_surface),surface_get_height(application_surface));
		for(var i = 0; i < loops; i++){
			surface_set_target(i%2?application_surface:flopSurf)
			log(i%2?flopSurf:application_surface)
			var magic = (2*pi)*(i/loops);
			shader_set_uniform_f(Unidir,sin(magic)*10,cos(magic)*10);
			draw_surface(i%2?flopSurf:application_surface,0,0);
			surface_reset_target();
		}*/
		gpu_set_colorwriteenable(1,1,1,1);
		gamePosition.x = ((window_get_width()/2)-surface_get_width(application_surface)/2)+(gameOffset.x*global.scale);
		gamePosition.y = sly+(gameOffset.y*global.scale);
		draw_surface_stretched(application_surface,gamePosition.x,gamePosition.y,gameSize.x*global.scale,gameSize.y*global.scale);
		//surface_free(flopSurf)
		//shader_reset();
		draw_surface_stretched(global.surfaces.HUD,slx,sly,window_get_width()-slx*2,window_get_height()-sly*2);
		camera_set_view_pos(view_camera[0],0,0); //reset screenshake for stacking
		//draw_surface(global.surfaces.screen,slx,sly);
		draw_surface_stretched(global.surfaces.screen2, slx, sly, window_get_width()-slx*2,window_get_height()-sly*2);
		application_surface_draw_enable(false);
		if !instance_exists(o_textbox) {
			gpu_set_colorwriteenable(1,1,1,1);
		}
		shader_reset();
		draw_text(0,0,fps);
		draw_text(40,40,instance_number(o_bullet));
		//draw_surface_stretched(global.surfaces.threedee,0,0,640,360);
		//draw_clear($009999);
		
		//#macro draw_clear c_null
		//#macro draw_clear_alpha c_null
	},
	restart_surfaces: function(){
		for(var i = 0; i < 1000; i++){
			if(surface_exists(i) && i != application_surface){
				surface_free(i);	
			}
		}
		surfaces_init();
	}

}


function surfaces_init(_scale){
	with(global.surfaces){
		log("initting surfaces");
		//HUD= surface_create(window_get_width(),window_get_height());
		HUD= surface_create(640,360);
		bg= surface_create(310,360);
		screen2 = surface_create(640,360);
		map = surface_create(290, 340);
		border = surface_create((640)+(borderSize*2),(360)+(borderSize*2));

		surface_resize(application_surface,gameSize.x*global.scale,gameSize.y*global.scale) //uncover this when doing real resolutions //i uncovered it thanks past bread man
		camera_set_view_size(camera_get_active(),gameSize.x,gameSize.y);
		//window_set_size((640*global.scale)+(borderSize*2*global.scale),(360*global.scale)+(borderSize*2*global.scale));
		
		threedee= surface_create(surface_get_width(application_surface)*threedeescale,surface_get_height(application_surface)*threedeescale);
		display_set_timing_method(tm_sleep); //eventually expose these to the player because they are black magic and different computers like different settings
		display_set_sleep_margin(10000);
		//window_set_size((640*global.scale)+(global.surfaces.borderSize*global.scale*2),(360*global.scale)+(global.surfaces.borderSize*global.scale*2));
	}
}	

window_set_size((640*global.scale)+(global.surfaces.borderSize*global.scale*2),(360*global.scale)+(global.surfaces.borderSize*global.scale*2));



//application_surface_enable(false)
/*function shader_reset_fake(){
	shader_set(z_normal);	
}
#macro shader_reset shader_reset_fake*/