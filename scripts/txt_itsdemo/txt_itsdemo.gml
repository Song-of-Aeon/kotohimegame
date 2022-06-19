function txt_itsdemo() {
	
	msg = msglang([
	
	txt("|c097128194HELLO ARTISTS AND TAMI!!"),
	txt("|c097128194there is to be a combat minigame here, but it's not done yet, so you can't read the dialogue during it"),
	txt("|c097128194kotohime manages to convince chiyuri to chill out, and they both return to the bar"),
	txt("|c097128194so: continue!"),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_drinks)};
}