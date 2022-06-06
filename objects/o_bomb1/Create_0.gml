/// @description Insert description here
// You can write your code in this editor
count = 0;
if(instance_exists(o_bullet)){
	instance_destroy(o_bullet);
}
if(instance_exists(o_shooter)){
	o_shooter.hp-=20;
	with o_shooter {
		c_makefx(x, y, 6, 1, 3);
	}
}