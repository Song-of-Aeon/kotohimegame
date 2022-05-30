var whatever = new consoleCommand("fart", "use 2 fart", function(args) {
	audio_play_sound(snd_explde, 0, false)
	log("farted");
});