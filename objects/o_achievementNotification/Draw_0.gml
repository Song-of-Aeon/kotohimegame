/// @description Insert description here
// You can write your code in this editor
surface_set_target(global.surfaces.HUD);
draw_set_color(c_gray)
draw_rectangle(x-(width/2),y,x+(width/2),y+height,false);
draw_set_color(c_white);
draw_sprite(achievement.sprite,0,x-(width/2)+20,y+20);
draw_text(x-(width/2)+40,y+10,achievement.name);
if(count < 30){
	y++;	
}
if(count > 100){
	y--
}
else if(count > 130){
	instance_destroy();	
}
surface_reset_target();
count++;