/// @description Insert description here
// You can write your code in this editor
draw_set_alpha((80-count)/40)
draw_set_color(c_red);
draw_text_transformed(x-damage/4,y,damage,lerp(damage/5,1,.80),lerp(damage/5,1,.80),0);
//draw_text(x,y,damage);
draw_set_color(c_white);
y--
count++;
if(count > 10+damage){
	instance_destroy();
}
x+=random_range(-count/40,count/40);
draw_set_alpha(1);

