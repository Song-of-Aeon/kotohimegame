function makeSettingsSlider(_x,_y,setting){
	var element = makeGenericElement(_x,_y,200,50,s_null);
	element.setting = setting;
	element.draw = method(element,function(){try{;setting.draw(x,y)}catch(e){log(e); setting.value = setting.defaultValue}});
	element.onSelect = method(element,function(dir){
		if(dir == -1){
			setting.value = setting.onChange(setting.value-((setting.maxval>20)?10:1));	
		}
		else{
			setting.value = setting.onChange(setting.value+((setting.maxval>20)?10:1));	
		}
	});
}


///@description name:string settings:array, onchange:function
function saveEntry(_name,_defaultValue,_onchange,_draw) constructor{
	draw = _draw;
	name = _name;
	value = undefined;
	defaultValue = _defaultValue;
	onChange = _onchange;
	global.savemanager.settingsList[?_name] = self;
}
function SliderEntry(_name,_minval,_maxval,_onchange,_defaultValue = _minval){
	var onDraw = function(x,y){
		//log(value);
		var slidersize = 160;
		draw_set_halign(fa_center);
		draw_text(x+25,y,name);
		draw_text(x+25,y+30,string(value));
		draw_line(x+10,y+20,x+10+slidersize,y+20);
		draw_circle(lerp(x+10,x+10+slidersize,(value-minval)/(maxval-minval)),y+20,3,false);
	}
	var entry = new saveEntry(_name,_defaultValue,_onchange,onDraw);
	entry.draw = method(entry,entry.draw);
	entry.minval = _minval;
	entry.maxval = _maxval;
	//log(entry.minval);
	return entry;
}
