// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function setCursor(){
	global.MenuCursor = { //ideally we have 3 or 4 presets for how menucursor should behave and 
		x:0,
		y:0,
		width:0,
		height:0,
		disabled: true,
		options:{
			speed: -1, //-1 is instant
			direct: false, //does cursor go directly from one element to another or move on x/y
			mouse: false,
			sounds: {
				moving: new Sound(se_themenu,50),
				select: new Sound(se_themenu,50),
			},
		},
		moving: false,
		target: noone,
		move: function(direction){
			var potentialNewTargets = [];
			options.sounds.moving.Play()
			array_copy(potentialNewTargets,0,o_uicontroller.UIElements,0,array_length(o_uicontroller.UIElements));
			if(target == noone) return;
			for(var i = array_length(potentialNewTargets)-1; i>= 0; i--){ //backwards so we can make changes to array and be fine
				if((potentialNewTargets[i].x == target.x && potentialNewTargets[i].y == target.y )|| potentialNewTargets[i].options.selectable == false){
					array_delete(potentialNewTargets,i,1);
				}
				else{
					var result = false;
					var dir = 0;
						switch(direction){
							case DIRECTIONS.RIGHT:	
								dir = 0;
								//result = (potentialNewTargets[i].x  <= x);
							break;
							case DIRECTIONS.LEFT:
								dir = 180;
								//result = (potentialNewTargets[i].x  >= x);
							break;
							case DIRECTIONS.UP:	
								dir = 90;
								//result = (potentialNewTargets[i].y  >= y);
							break;
							case DIRECTIONS.DOWN:
								dir = 270;
								//result = (potentialNewTargets[i].y  <= y);
							break;
							case DIRECTIONS.ANY:
								result = false;
							break;
						}
						dir+=180;
						if(abs(angle_difference(point_direction(potentialNewTargets[i].x,potentialNewTargets[i].y,x,y),dir)) > 75){
							result = true;	
						}
						if(result){
							array_delete(potentialNewTargets,i,1);
						}
					}
				}
			var closest = noone;
			for(var i = 0; i < array_length(potentialNewTargets);i++){
				if(closest == noone || point_distance(closest.x,closest.y,x,y )> point_distance(x,y,potentialNewTargets[i].x,potentialNewTargets[i].y)){
					closest = potentialNewTargets[i];
				}
			}
			if(closest == noone){return}
			target = closest;
		},
		update: function(){
			//log("target:" + target
			c_input();
			if(keyboard_check_pressed(vk_f10)){
				log(target);	
			}
			if(target!=noone){
				x = target.x;
				y = target.y;
				width = target.options.width;
				height = target.options.height;
			}
			if(target == noone){
				var i;
				for (i=0; i<array_length(o_uicontroller.UIElements); i++) {
					if o_uicontroller.UIElements[i].options.selectable {
						log("cursor lost its target, defaulting to id " + string(i));
						target = o_uicontroller.UIElements[i];
						exit;
					}
				} if i=0 {
					log("cursor lost its target, cant find one to default to! cursor disabling...");
					disabled = true;
				}
			}
			if select {
				if(!target.options.disabled){
					target.onSelect();	
				}
			}
			if back {
				try{
					onBack();
				}
				catch(e){
					log(e);	
				
				}
			}
			if rightp {
				move(DIRECTIONS.RIGHT);
			}
			if leftp {
				move(DIRECTIONS.LEFT);
			}
			if upp {
				move(DIRECTIONS.UP);
			}
			if downp {
				move(DIRECTIONS.DOWN);
			}
			if(false){
				var closest = noone;
				//var mousex = window_mouse_get_x()*global.scale;
				//var mousey = window_mouse_get_y()*global.scale;
				for(var i = 0; i < array_length(o_uicontroller.UIElements);i++){
					var guy = o_uicontroller.UIElements[i]
						if(closest == noone || point_distance(mousex,mousey,guy.x,guy.y) < point_distance(mousex,mousey,closest.x,closest.y)){
							closest = guy;	
						}
				}
				//x = mousex;
				//y = mousey;
				if(closest != noone){
					target = closest;	
				}
			}
		},
		draw: function(){
			surface_set_target(global.surfaces.HUD);
			//var mousex = window_mouse_get_x()*global.scale;
			//var mousey = window_mouse_get_y()*global.scale;
			//draw_sprite(s_mistake,0,mousex,mousey);
			draw_set_color(c_white);
			//draw_rectangle(x,y,x+width,y+height,true);
			//draw_sprite_ext(s_itemselector,0,x,y,(width+6)/32,(height+6)/32,0,0,1);
			surface_reset_target();
		},
		onBack: function(){ //use this for pressing x?
			if(!instance_exists(o_pause) && room == BASEMENT) {
				instance_destroy(o_textbox);
				instance_deactivate_object(o_shopmanager);
				ISAAC.state = st_standard;
				keyboard_clear(ord("A")); //bad!!!!! bad!!!!!!!!!!!!!!!!!!
				keyboard_clear(ord("X")); //bad!!!!! bad!!!!!!!!!!!!!!!!!!
				c_inputnull();
				//ISAAC.
				//the above is a valid line. why
				regenerateItemUI()
				global.MenuCursor.disabled = true;
			}
		}
	}
}
setCursor();
enum DIRECTIONS {
	LEFT,RIGHT,UP,DOWN,ANY,FORWARD,BACK
}