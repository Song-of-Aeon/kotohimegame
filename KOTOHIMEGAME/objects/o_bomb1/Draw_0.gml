/// @description Insert description here
// You can write your code in this editor
count++;
c_screenshake(10,10);
draw_sprite_ext(s_bomby,0,x,y,count/10,count/10,count*10,c_white,0.5-count/200);
draw_sprite_ext(s_bomby,0,x,y,count/10,count/10,-count*10,c_white,0.5-count/200);
if(count > 100){
	instance_destroy();
}