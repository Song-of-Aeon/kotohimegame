surface_set_target(global.surfaces.HUD);
draw_sprite(s_entropy, 0, 0, 0);
set_font_style(FONT.H2);
draw_set_halign(fa_center);
draw_set_color(c_black);
var i, j;
for(i=0; i<8; i++) {
	var stringdude = nam(i, 2) ? "The Endless and Kotohime" : "The End-less Kotohime"
	for(j=1; j<=string_length(stringdude); j++) {
		var dude = distabs(-(count/8)+i*180-j*5, ((count/8)+i*87)%(900));
		draw_text_transformed(dude.x+640, dude.y+360, string_char_at(stringdude, j), 1, 1, point_direction(640, 360, dude.x+640, dude.y+360)-90);
	}
}
draw_set_font(ft_novabig);
draw_set_color(c_fuchsia);
draw_text(360, 320, !pos ? ">Continue<" : "Continue");
if !file_exists("hi guys.kotohime") draw_set_alpha(.3);
draw_text(640, 80, pos==1 ? ">Load<" : "Load");
draw_set_alpha(1);
if !file_exists("you've won.kotohime") draw_set_alpha(.3);
draw_text(640, 540, pos==2 ? ">Glossary<" : "Glossary");
draw_text(900, 320, pos==3 ? ">End<" : "End");
draw_set_alpha(1);
draw_sprite(Sprite361, file_exists("you've won.kotohime"), 0, 0);
surface_reset_target();

lmao = "lm";
lol = lmao;
lol += "ao";