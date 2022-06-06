/// @description Insert description here
// You can write your code in this editor
surface_set_target(global.surfaces.HUD);
var sly = global.surfaces.borderSize * global.scale;
var xx = ((window_get_width()/2)-surface_get_width(application_surface)/2)+(global.surfaces.gameOffset.x*global.scale);
var yy = sly+(global.surfaces.gameOffset.y*global.scale);
xx/=global.scale;
yy/=global.scale;
xx-=global.surfaces.borderSize;
yy-=global.surfaces.borderSize;
draw_set_color(c_gray);
draw_rectangle(xx,yy,xx+room_width,yy+room_height,false);
draw_set_color(c_white)
draw_text(xx,yy+room_height-15,"> " + keyboard_string + (global.count % 30 < 15 ? "_" : ""));

for(i = 0; i < min(ds_list_size(global.consoleLog),30);i++){
	draw_set_color(global.consoleLog[|i].color);
	draw_text(xx,yy+room_height - (10*(i+3)),string_split(global.consoleLog[|i].text,"\n")[0]);	
}
surface_reset_target();