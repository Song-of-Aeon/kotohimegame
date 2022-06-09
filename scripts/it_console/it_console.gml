// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if(!variable_global_exists("consoleCommands"))
global.consoleCommands = ds_list_create();
global.previousCommands = [];
function consoleCommand(_name, _help,_func, _autocomplete = function(){}) constructor{
	name = _name
	help = _help
	func = _func
	autocomplete = _autocomplete
	var exists = 0;
	for(var i = 0; i < ds_list_size(global.consoleCommands);i++){
		if(global.consoleCommands[|i].name == _name){
			exists = 1;
			break;
		}
	}
	if(!exists)
	ds_list_add(global.consoleCommands,self)
}
var a = new consoleCommand("piss","shart",function(){log("shitty")});
//gc_enable(false)
var a = new consoleCommand("overlay","Enables/Disables Gamemaker's default performance overlay(default disabled)",function(args){if(array_length(args)) show_debug_overlay(args[0] != "disable" ) else show_debug_overlay(true)});
var a = new consoleCommand("gc","Enable/Disable Gamemaker's Garbage collector(default enabled)(dont worry we still run gc we just try to not during danmaku)",function(args){if(array_length(args)) gc_enable(args[0] != "disable" ) else gc_enable(true)});
var a = new consoleCommand("speed","Choose a tickrate for the game",function(args){global.actualtimescale = real(args[0])});
var a = new consoleCommand("fps","sets gamemaker's room_speed variable(max fps)",function(args){room_speed = real(args[0])});

a = new consoleCommand("help","get help",function(){
		for(var i = 0; i < ds_list_size(global.consoleCommands); i++){
			var a = new consoleEntry("\"" +global.consoleCommands[|i].name + "\": " + global.consoleCommands[|i].help, c_aqua);
		}
});
function consoleEntry(_text,_color = c_black) constructor{
	//show_debug_message("new consoleEntry" + _text);
	text = _text;
	color = _color;
	time = current_time;
	//ds_list_add(global.consoleLog,self);
	ds_list_insert(global.consoleLog,0,self);
}
global.consoleLog = ds_list_create();

var z = {
	onstep: function(){
		if(keyboard_check_pressed(191)){
			enabled = true;
			c_pause();
		}
	},
	enabled: false,
	//myhooks: {onstep: true,ondraw: true },
	name: "Console",
	description: "Console up! ...well no, you bring the console down with ~ but you can send it back up too",
	tooltip: "bread man's secret project dont tell aaaaaanyone",
	sprite: s_null,
	quality: 1,
	usage: ITTYPE.MECHANIC,
}
//global.x_itemmanager.BindItem(z, ITEMS._CONSOLE);
itemgen(z,ITEMS._CONSOLE);

nu consoleCommand("bulletTest","stress test for bullets",function(){c_shootcircle(ISAAC.x,ISAAC.y-50,.02,0,500,global.bullets.small)});