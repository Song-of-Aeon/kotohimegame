function txt_reimuyaunnafter() {
	//>("____________________________________")
	msg = msglang(
	[
	
	txt("I don't really know why you'd bother.", REIMU.UNIMPRESSED, SPRITEPOS.LEFT, u, function() {ISAAC.state = st_lock}),
	txt("Ah! You got me! Man!#Aw, shucks!", AUNN.HAPPY, SPRITEPOS.RIGHT),
	txt("Really well done, you got me good!#I bet you're tired from all that dodging.", AUNN.HAPPY, SPRITEPOS.RIGHT),
	txt("Let's go home, I'll make some tea!", AUNN.INTENSE, SPRITEPOS.RIGHT),
	txt("That's your angle...?#Cute, but not enough.", REIMU.ANNOYED, SPRITEPOS.LEFT),
	txt("I know I can't get out of this one.#Better to bite the bullet.", REIMU.CONCERNED, SPRITEPOS.LEFT),
	txt("Aw, man.", AUNN.TALKING, SPRITEPOS.RIGHT),
	txt("It's my duty. You've got one too,#so hurry on back to the shrine.", REIMU.HAPPY, SPRITEPOS.LEFT),
	txt("Alright, but you better be safe!#Don't get tricked by Yukari!", AUNN.SERIOUS, SPRITEPOS.RIGHT),
	txt("Don't worry, that's already my mantra.", REIMU.UNIMPRESSED, SPRITEPOS.LEFT),
	
	],
	[
	
	]
	)
	
	endevent = function(){ISAAC.state = st_standard; c_stagegoto(); music_set(mus.null)};
}