/// @description Insert description here
// You can write your code in this editor
starSurface = surface_create(surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));

//url_open("https://www.google.com");
depth = 200;
function Star() constructor{
	rotation= random_range(0,360);
	distance= random_range(70,450);
	length = 20;
	speed = random_range(0.1,0.4);
	x = 0;
	y = 0;
	color = c_teal;
	imprecision = 3;
	draw = function(){
		draw_set_color(color);
		for(var i = 0; i < length; i++){
			draw_set_alpha(0.25+(i/length));
			x = dcos(rotation + (i*imprecision))*distance;
			y = dsin(rotation + (i*imprecision))*distance;
			x+=o_theStars.x;
			y+=o_theStars.y;
			
			var x2 = dcos(rotation + (i-1)*imprecision)*distance;
			var y2 = dsin(rotation + (i-1)*imprecision)*distance;
			x2+=o_theStars.x;
			y2+=o_theStars.y;
			
			draw_line_width(x,y,x2,y2,global.scale);
		}
		draw_set_color(c_white);
		draw_set_alpha(1);
		rotation+= speed;
	}
	
}

stars = [];
repeat(90){
	array_push(stars,new Star());
}
stars[27].color = c_red;
count = 0;
x = 320;