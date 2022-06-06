// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Model(filePath, texture, vformat = vertex_format_create_simple(true,true,true,false), _x = 0, _y = 0, _z = 0, _scale = 1,_xrot = 0, _yrot = 0, _zrot = 0,loopdist) constructor{
	vertexBuffer = model_load(filePath,vformat);
	try{ 
		vertex_freeze(vertexBuffer)
	}
	catch(e){
		//log(e);
		//log("this error is probably fine, its caused by trying to freeze an already frozen vertex buffer, but gamemaker has no way to check if a buffer is already frozen...");
	}
	//vertex
	tex = sprite_get_texture(texture,0);
	//log(self);
	//log(vertexBuffer);
	x = _x;
	y = _y;
	z = _z;
	xrot = _xrot;
	zrot = _zrot;
	yrot = _yrot;
	scale = _scale;
	//bpy.context.scene.cursor.location
	width = 0;
	height =  0 ;
	ds_list_add(o_3dmanager.models,self);
	function draw(){
		//var camera = camera_get_active();
		//var cammat = camera_get_view_mat(camera);
		//camera_set_view_mat(camera,matrix_build_lookat(global.camerax-x,global.cameray-y,global.cameraz-z,global.camerax +cos(o_3dmanager.mousex/100),global.cameray +sin(o_3dmanager.mousex/100),global.cameraz+sin(o_3dmanager.mousey/100),0,0,1));
		//shader_set(z_tile3d);
		//if(shader_current() != z_translate) {
		//	shader_reset();
		//	shader_set(z_translate);
		//}
		//shader_set_uniform_f(shader_get_uniform(z_translate,"movement"),x,y,z);
		//shader_set(z_differentnormal)
		matrix_set(matrix_world,matrix_build(x,y,z,xrot,yrot,zrot,scale,scale,scale ))
		
		vertex_submit(vertexBuffer,pr_trianglelist,tex);
		//shader_reset();
		//shader_reset();
		//shader_reset();
		//log(buffer_read(vertexBuffer,buffer_vbuffer));
		//camera_set_view_mat(camera,cammat);
		//matrix_set(matrix_world,)
	}
	function destroy(){
		throw "idiot";	
	}
}