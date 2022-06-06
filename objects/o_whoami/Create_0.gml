//x_characters();
pos = 0;
guys = [];
//charnames = [];
ds_map_values_to_array(global.chara, guys);
charnames = ds_map_keys_to_array(global.chara);
//guys[0] = global.chara[?"reimu"];
//guys[1] = global.chara[?"undertale"];
lerper = 0;
disable = false;
state = st_charselect;
drawstate = c_null;
difpos = 2;
routepos = 0;
difficulties = ["EASY", "NORMAL", "HARD", "LUNATIC"];
difcolors = [c_green, c_blue, c_red, c_fuchsia];
routes = ["THURSDAY", "FRIDAY", "SATURDAY"];
routecolors = [c_teal, c_cyan, c_purple];
lerpdif = new vec2();
lerproute = new vec2();
seedstring = "";
pickeddif = false;

tutorialdata = [
["Useful tutorial", "Non-canon"],
["The two stooges", "Not very helpful", "Talks a lot"],
]