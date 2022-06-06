// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_reset(){
	var camera = camera_get_active();
	camera_set_view_mat(camera,global.vmat);
	camera_set_proj_mat(camera,matrix_multiply(global.projmat,matrix_build(0,0,0,0,0,0,1,-1,1)));
	camera_apply(camera);
}