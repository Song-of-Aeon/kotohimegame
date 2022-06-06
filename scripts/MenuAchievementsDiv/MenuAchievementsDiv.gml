// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateAchievementsMenu(){
	global.MenuCursor.draw = munction(function(){
		surface_set_target(global.surfaces.HUD);
		draw_sprite_ext(s_itemselector,0,x-17,y-18,(width+6)/32,(height+6)/32,0,c_white,1);
		try{
			draw_text(420,100,target.target.name);
			draw_text(420,130,"unlocks: " + c_getitembyid(target.target.unlocks[0]).name);
		}
		catch(e){
			//draw_text(420,100,"null");
		}
		surface_reset_target();
		
	});
	for(var i = 1; i < ACHIEVEMENTS.SIZE; i++){
		try{
			var achievement = c_getachievementbyid(i)
			var element = makeGenericElement(((i%10)*40)+40,(floor(i/10)*40)+40,32,32,achievement.sprite)
			element.target = achievement;
			element.count = (-element.x + -element.y)/5;
			element.update = munction(function(){
				count+=2; 
				options.width = clamp(count, 0,32);
				options.height = clamp(count, 0,32);
			});
			
			element.draw = method(element,function(){
			if(target.isUnlocked() == false){
				shader_set(z_enblacken);
			}
			draw_sprite_ext(sprite,imageIndex,x,y,options.width/32,options.height/32,0,c_white,1);
			shader_reset();
		});
		}
		catch(e){
			log(e);
			makeGenericElement(((i%10)*40)+40,(floor(i/10)*40)+40,32,32,s_mistake)
		}
	}
}