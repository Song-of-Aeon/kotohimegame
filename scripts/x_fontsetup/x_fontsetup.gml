function x_fontsetup() {}

var langdif = 16;

global.fontset = [];
global.fontset[FONT.UI] = ft_nova//ft_couriernew8;
global.fontset[FONT.UI+langdif] = ft_gothic10;
global.fontset[FONT.GLOSSARY] = ft_novasmall//ft_couriernew8;
global.fontset[FONT.GLOSSARY+langdif] = ft_gothic10;
global.fontset[FONT.TALK] = ft_nova//ft_couriernew8;
global.fontset[FONT.TALK+langdif] = ft_gothic8;
global.fontset[FONT.ZPIX] = ft_zpix//ft_couriernew8;
global.fontset[FONT.ZPIX+langdif] = ft_zpix;
global.fontset[FONT.DETERMINATION] = ft_determination//ft_couriernew8;
global.fontset[FONT.DETERMINATION+langdif] = ft_determination;
global.fontset[FONT.DETERMINATIONSMALL] = ft_determinationsmall//ft_couriernew8;
global.fontset[FONT.DETERMINATIONSMALL+langdif] = ft_determinationsmall;
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
	GLOSSARY,
	H2,
	H3,
	TITLE,
	DETERMINATION,
	DETERMINATIONSMALL,
	ZPIX,
}
