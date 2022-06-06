function txt_chiyuriyaunnafter() {
	//>("____________________________________")
	msg = msglang(
	[
	
	txt("You got me!", AUNN.TALKING, SPRITEPOS.RIGHT, u, function() {ISAAC.state = st_lock}),
	txt("I guess you don't need my protection...", AUNN.SERIOUS, SPRITEPOS.RIGHT),
	txt("The idea of protection is rather violent here,#isn't it?", YUMEMI.PRESSUREDPOINT, SPRITEPOS.LEFT),
	txt("Regardless, I apologize for my companion's#callousness. We do not mean to demean#the youkai natives of this place, but we are#confident in our ability to defend ourselves.", YUMEMI.EXPLAINING, SPRITEPOS.LEFT),
	txt("Chiyuri!", YUMEMI.ANNOYED, SPRITEPOS.LEFT),
	txt("Hm? Yeah, sorry about that.", CHIYURI.DAMN, SPRITEPOS.MIDLEFT),
	txt("I'm not some kind of youkai representative#or anything, you know...", AUNN.TALKING, SPRITEPOS.RIGHT),
	txt("Anyway, you wanted to meet with Reimu?#She left a bit ago.", AUNN.SERIOUS, SPRITEPOS.RIGHT),
	txt("Oh? Would it be possible to wait at the shrine#for her return?", YUMEMI.NERVOUSFIST, SPRITEPOS.LEFT),
	txt("Well, maybe...#Actually, could you chase her down for me?#A scary lady gave her a sketchy job.", AUNN.TALKING, SPRITEPOS.RIGHT),
	txt("Frightening.", CHIYURI.BORED, SPRITEPOS.MIDLEFT),
	txt("But a fantastic opportunity to gain her favor#if she indeed troubled! We accept this task.", YUMEMI.SMUG, SPRITEPOS.LEFT),
	txt("Thanks! She went that way.", AUNN.HAPPY, SPRITEPOS.RIGHT),
	txt("Anything, like, else?", CHIYURI.PHONE, SPRITEPOS.MIDLEFT),
	txt("She didn't tell me anything!", AUNN.SERIOUS, SPRITEPOS.RIGHT),
	txt("Oh don't worry Chiyuri we can figure it out#on the way.", YUMEMI.PRESSURED, SPRITEPOS.LEFT),
	txt("Thank you, Ms. Komano.#Our collaboration today will surely ripple into#future magical and scientific breakthroughs.", YUMEMI.HAPPYOPEN, SPRITEPOS.LEFT),
	txt("Don't expect any royalties.", CHIYURI.GRIN, SPRITEPOS.MIDLEFT),
	txt("Um, okay?", AUNN.TALKING, SPRITEPOS.RIGHT),
	
	],
	[
	
	]
	)
	
	endevent = function(){ISAAC.state = st_standard; c_stagegoto(); music_set(mus.null)};
}