log("I AM HERE");
if(variable_instance_exists(o_3dmanager,"models"))
return;
models = ds_list_create();
//var a = new consoleCommand("testy","ok",function(){log("ok")})
count = 0;
mousex = 0;
mousey = 0; //for 
global.camerax = 0;
global.cameray = 0;
global.cameraz = 50;
freecam = {x: 0, y:0, z:0,enabled:false};
var a = new consoleCommand("freecam","freecam 1/0 to cam freely",function(args){o_3dmanager.freecam.enabled = real(args[0])});


gpu_set_fog(true,c_black,0,3);
#region oneshot_prototype
function makeBuilding(_x,_y,_z){
	var vertform = vertex_format_create_simple();
	if(irandom_range(0,10) < 2){
		return new Model("thewalls2.dat",s_thewalls,vertform,_x,_y,_z)
	}
	return new Model("thewalls.dat",s_thewalls,vertform,_x,_y,_z)
}
function generateLineOfBuildings(_x,_y,_z){
	var maximum = 5;
	for(var i = -(maximum/2); i < maximum/2; i++){
		makeBuilding(_x,_y,_z+(137.08)*i);
	}
}

function generateBuildings(){
	ds_list_clear(models);
	for(var i = 0; i < 100; i++){
		generateLineOfBuildings(i* 10.265313148498535 * 20 * 2  ,0,0);
	}
	/*var o1 = new Model("thewalls.dat",s_thewalls);	
	var o2 = new Model("thewalls.dat",s_thewalls);
	o2.z+=o2.height;
	var o3 = new Model("thewalls.dat",s_thewalls);
	o3.x = 10.265313148498535 * 20 * 2;*/
}
#endregion
//generateBuildings();
//var canyonSprite = sprite_add("white.png",0,false,false,0,0);
//var a = new Model("gernard.dat",canyonSprite,vertex_format_create_simple(),100,0.0);
//
//var a = new Model("canyon1.dat",s_u);
//var o = new Model("caves1.dat",s_ugly);
//o = new Model("caves2.dat",s_ugly);
//var o = new Model("testmodel.dat",s_grass,vertf);
//generateBuildings()

enabled = true;

//a = new Model("trees.dat",s_trees,vertf,0,0,0,400);


//a = new Model("clouds.dat",s_cloud,vertf,0,0,-50,400);


backgrounddraw = c_getstage().bgdraw;



//var format = vertex_format_create_simple(true,true,true,false)


//mousey = -60;
//whatever = true;