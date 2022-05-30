function x_fontsetup() {}

var langdif = 16;

global.fontset = [];
global.fontset[FONT.UI] = ft_zpix//ft_couriernew8;
global.fontset[FONT.UI+langdif] = ft_gothic10;
global.fontset[FONT.TALK] = ft_zpix//ft_couriernew8;
global.fontset[FONT.TALK+langdif] = ft_gothic8;
global.fontset[FONT.TITLE] = ft_titlefont;
global.fontset[FONT.TITLE+langdif] = ft_titlefont;
global.fontset[FONT.H2] = ft_copperplateh2;
global.fontset[FONT.H2+langdif] = ft_minchoh2;
global.fontset[FONT.H3] = ft_copperplateh3;
global.fontset[FONT.H3+langdif] = ft_minchoh3;


enum FONT {
	NULL,
	TALK,
	UI,
	H2,
	H3,
	TITLE,
}
