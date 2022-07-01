global.count++;
select = mouse_check_button_pressed(mb_left);
visible = true;
if keyboard_check_pressed(vk_anykey) {
	STATS.inputs++;
}
STATS.playtime++;

if !irandom(1000000000) {
	var unknown = variable_struct_get(global, "st"+"at"+""+"s");
	unknown[$26]++;
}