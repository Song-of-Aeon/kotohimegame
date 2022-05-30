/// @description Insert description here
// You can write your code in this editor
look_x += (keyboard_check(vk_right) - keyboard_check(vk_left))*2

look_y =0

var zz = -200;
var xx = lengthdir_x(200,-current_time/100) + (room_width*0.5);//Rotation is negative now to match with the old gif and spin clockwise
var yy = lengthdir_y(200,-current_time/100) + (room_height*0.5);

//Build a matrix that looks from the camera location above, to the room center. The up vector points to -z
projmat = matrix_build_lookat(200,200,-200, (room_width*0.5),(room_height*0.5),0, 0,0,-1);

camera_set_view_mat(view_camera[1], projmat);
spd = 0.1;
maxspd = 7;