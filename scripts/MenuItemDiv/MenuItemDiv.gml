// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateItemMenu(){
	exit;
	global.MenuCursor.draw = munction(function(){
		surface_set_target(global.surfaces.HUD);
		draw_sprite_ext(s_itemselector,0,x-17,y-18,(width+6)/32,(height+6)/32,0,c_white,1);
		if(target.target.unlocked != false || shift){
			draw_text(420,100,target.target.name);
			draw_text(420,130,target.target.usage);
			draw_text(420,150,"cost: " + string(target.target.quality));
			draw_text(420,170,target.target.description);
			if(shift){
				draw_text(420,70,"id: " + string(c_getidbyitem(target.target)));
			}
		}
		else{
			draw_text(420,100,"not unlocked");	
		}
		
		surface_reset_target();
	});
	
	var nonMechanics = [];
	for(var i = 1; i < ITEMS.SIZE;i++){
		try{
			var item = c_getitembyid(i);
			if(item.usage != ITTYPE.MECHANIC){
				array_push(nonMechanics,item);	
			}
		}
		catch(e){
			//makeGenericElement(40+i,40,32,32,s_mistake);
			array_push(c_getitembyid(ITEMS.NULL));
		}
	}
	for(var i = 0; i < array_length(nonMechanics);i++){
		var element = makeGenericElement(((i%10)*40)+40,(floor(i/10)*40)+40,32,32,nonMechanics[i].sprite)
		element.target = nonMechanics[i];
		element.count = (-element.x + -element.y)/5;
		element.update = munction(function(){
			count+=2; 
			options.width = clamp(count, 0,32);
			options.height = clamp(count, 0,32);
		});
	}
}