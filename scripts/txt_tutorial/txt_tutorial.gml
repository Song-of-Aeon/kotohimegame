function txt_tutorial() {
	
	msg = msglang([
	
	txt("hey CHIYURI", YUMEMI.HAPPY, SPRITEPOS.LEFT, u, function() {ISAAC.state = st_lock c_removeitem(ITEMS.STAUROGRAM)}),
	txt("yeah boss?", CHIYURI.PHONE, SPRITEPOS.MIDLEFT),
	txt("listen, LISTEN, chiyuri. take out your headphones#for a GOD DAMN second okay?#can you do that for me?", YUMEMI.ANNOYEDPOINT),
	txt("bro stfu im fuckin listening", CHIYURI.WHAT),
	txt("lol", YUMEMI.HAPPYOPEN),
	txt("seriously why the hell did you drag us out here?#it's literally the first day of break#take a chill pill", CHIYURI.WHAT),
	txt("this shit aint ENOUGH, CHIYURI#we ARE getting our magic to work,#fuck the university, fuck the cops.", YUMEMI.ANNOYED),
	txt("jesus christ you didn't ask anybody#if we could use the tardis did you", CHIYURI.WOAH),
	txt("and fuck you too if you're gonna#have that attitude", YUMEMI.ANNOYED),
	txt("chiyuri, i know you want this.#you aren't satisfied playing surviv.io all day.#we're the same...#we need the thrill of true discovery...", YUMEMI.SMUG),
	txt("sheeeeet duuuude you're right but cmon", CHIYURI.DAMN),
	txt("don't even worry about it,#i've got the whole thing planned out", YUMEMI.EXPLAINING),
	txt("listen up:#it's time for professor okazaki's#special paralegal magical#adventure-lecture field trip!", YUMEMI.HAPPY),
	txt("do i get credit for this?", CHIYURI.GRIN),
	txt("no", YUMEMI.ANNOYED),
	txt("STEP ONE: danmaku battles", YUMEMI.HAPPY),
	txt("now i'm sure you remember this land's specialty,#danmaku battles.", YUMEMI.HAPPYOPEN),
	txt("yeah i held a party here last week lol", CHIYURI.GRIN),
	txt("but in your frivolous drunkard romps,#did you think to quantify the different#types of danmaku one can use?", YUMEMI.EXPLAINING),
	txt("there's, like, bullets.#what else?", CHIYURI.WOAH),
	txt("well, there are many different kinds.#let's go over them quickly.", YUMEMI.HAPPY),
	txt("the kind you're probably most familiar with#are bullets most suited to defensive,#evasive techniques.", YUMEMI.HAPPYOPEN),
	txt("bullets you can just throw out constantly#while focusing on not getting hit.", YUMEMI.HAPPYOPEN),
	txt("those are called \"shot types\".#the bread and butter of danmaku combat.", YUMEMI.EXPLAINING),
	txt("i see you have your own already prepared...#why not warm up?", YUMEMI.HAPPYOPEN),
	
	],[
	
	txt("WEED"),
	
	])
	
	endevent = function() {ISAAC.state = st_standard /*c_getroom().step = function() {
		count++;
		if ncm() {
			
		}
	}c_moveroom(o_roommanager.rooms[1][0])*/};
}
function txt_tutorial1point5() {
	
	msg = msglang([
	
	
	
	txt("yeah, question.", CHIYURI.BORED, SPRITEPOS.LEFT, u, function(){ISAAC.state = st_lock}),
	txt("what's up?", YUMEMI.HAPPY),
	txt("what's with those little boxes that drop#when fairies blow up?", CHIYURI.WOAH),
	txt("you're not familiar?#i thought you said you came over here sometimes.", YUMEMI.PRESSURED),
	txt("yeah, to get wasted and shoot lasers,#not to attack the natives.#i'm not a freak.", CHIYURI.WHAT),
	txt("i would not call it \"attacking the natives\".#i call it a complimentary compulsory internship.#as a test subject.", YUMEMI.ELEMENTARY),
	txt("i think that's what you did to me too actually", CHIYURI.PHONE),
	txt("...i think they, uh, can respawn.#it's okay.", YUMEMI.PRESSUREDPOINT),
	txt("ANYWAY, upon dissipation, magic is wont to#change forms. when magical attacks are broken#during their use, the power of the spell#will be converted into solids.", YUMEMI.HAPPY),
	txt("if you pick them up, you'll gain some#magical power. depening on its type,#visible by color, the effects will be different.", YUMEMI.HAPPYOPEN),
	txt("red ones will power up your shot types.#the amount that you can meaningfully#collect is determined by your shot type.", YUMEMI.EXPLAINING),
	txt("blue ones will power up your...#well, we'll get to it. generally,#they're also good for dealing damage.", YUMEMI.EXPLAINING),
	txt("green ones improve your agility#move faster when going fast,#and move slower when going slowly.", YUMEMI.EXPLAINING),
	txt("for the next two, i have to mention that#there's a few ways to pick up these things.", YUMEMI.HAPPYOPEN),
	txt("of course, just touching them works fine.", YUMEMI.EXPLAINING),
	txt("but if you fly to a certain point ahead#of where you usually would dodge from,#they'll all gravitate toward you.#i really don't know why.", YUMEMI.PRESSUREDPOINT),
	txt("you don't know shit!", CHIYURI.GRIN),
	txt("...and if you focus your movement to be slower,#you'll have a radius in which you can#pick them up from a distance.", YUMEMI.ANNOYEDOPEN),
	txt("back to the boxes, the orange ones make that#point of gravitation closer.#it's still dangerous, but easier to reach.", YUMEMI.EXPLAINING),
	txt("finally, the cyan ones increase the radius#in which you can pick them up.", YUMEMI.EXPLAINING),
	txt("this also affects the radius in which you can#siphon energy from passing bullets,#although we'll get to the utility of that later.", YUMEMI.HAPPY),
	txt("wow.#i already forgot all of that.", CHIYURI.PHONE),
	txt("yeah, it's a bit of a pain.#i wish we had some sort of chart that#showed all of them, their colors, and maybe#a symbol that correlated to each.", YUMEMI.PRESSUREDPOINT),
	txt("i'm an mspaint god i'll make one later", CHIYURI.GRIN),
	//txt("", ""),
	
	],[
	
	txt("WEED"),
	
	])
	
	endevent = function() {ISAAC.state = st_standard};
}

function txt_tutorial2() {
	
	msg = msglang([
	
	txt("QUESTION TWO!", CHIYURI.GRIN, SPRITEPOS.LEFT, u, function(){ISAAC.state = st_lock}),
	txt("yes?", "yumemi"),
	txt("if shot types are so important,#why do most people seem to like.#not use them at all.", CHIYURI.BORED),
	txt("all the youkai i see use-", CHIYURI.WOAH),
	txt("spellcards! the spellcard system's namesake.#fantastic youtuber transition chiyuri", YUMEMI.HAPPY),
	txt("compared to freeform danmaku,#spellcards are a structured representation#of one's self.", YUMEMI.HAPPYOPEN),
	txt("it's very important for a youkai to be able to#express themselves in this way so as to#perpetually be affirming their existence.", YUMEMI.EXPLAINING),
	txt("because of that,#i've concluded that they often prefer spellcards#to more brawl-like alternatives.", YUMEMI.EXPLAINING),
	txt("when you use a spellcard,#you'll find that they provide#overwhelming power of some sort,#and usually protect you from attacks for a while.", YUMEMI.EXPLAINING),
	txt("although we don't have too many to begin with,#and we can't repeat them back-to-back forever.#they'll need time to regain power.", YUMEMI.EXPLAINING),
	txt("plus, they aren't a solve-all solution.#depending on the type, it might be easy to#miss with, or just not be very powerful.", YUMEMI.PRESSUREDPOINT),
	txt("here, you can borrow mine.#it works best when you're a#certain distance away, just like your shots.", YUMEMI.HAPPY, SPRITEPOS.LEFT, u, function(){c_additem(ITEMS.STAUROGRAM)}),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {ISAAC.state = st_standard};
}

function txt_tutorial3() {
	
	msg = msglang([
	
	txt("gotcha.#sometimes spellcards, not all the time.", CHIYURI.GRIN, SPRITEPOS.LEFT, u, function(){ISAAC.state = st_lock}),
	txt("next, we have kind of a repeat of the first.#\"options\".", YUMEMI.HAPPYOPEN),
	txt("there's options?", CHIYURI.WOAH),
	txt("...i don't know why they're called that,#admittedly.", YUMEMI.NERVOUSFIST),
	txt("\"options\" are magical tools danmaku-users#manipulate to help them shoot.#they operate semi-independently, and can#be seen in use alongside shot types or spellcards.", YUMEMI.EXPLAINING),
	txt("basically, just some things that#float around you and shoot.", YUMEMI.HAPPY),
	txt("while shot types can be measured in quality,#they find more weight in quantity.", YUMEMI.HAPPYOPEN),
	txt("i found these on the ground earlier.#try them out!", YUMEMI.PRESSURED, SPRITEPOS.LEFT, u, function(){c_additem(ITEMS.YINYANG)}),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {ISAAC.state = st_standard};
}
function txt_tutorial4() {
	
	msg = msglang([
	
	txt("finally, we have flashbombs.", YUMEMI.HAPPYOPEN, SPRITEPOS.LEFT, u, function(){ISAAC.state = st_lock}),
	txt("flashbombs are usually also akin to a tool,#but they're used directly,#and don't operate without involvement.", YUMEMI.HAPPY),
	txt("they're kind of like your alt-fire,#usually getting charged up when#you're near enemy bullets.", YUMEMI.HAPPY),
	txt("sounds gay", CHIYURI.PHONE),
	txt("BUT, with smart use, they can be very powerful,#often being able to destroy enemy bullets#after accumulating their charge.", YUMEMI.EXPLAINING),
	txt("i don't actually have an example.#you'll probably know them when you see them.", YUMEMI.PRESSUREDPOINT),
	txt("anyway, that's basically it.", YUMEMI.HAPPYOPEN),
	txt("of course, no matter what implements you use,#you are subject to the spellcard rules.", YUMEMI.PRESSUREDPOINT),
	txt("if you get hit too much, you lose.#if you lose, we have to go home.", YUMEMI.PRESSUREDPOINT),
	txt("you know, i'm not really liking how many#times you're using \"you\"...", CHIYURI.BORED),
	txt("ah, i had almost forgotten to mention!#on this adventure, you-", YUMEMI.NERVOUSFIST),
	txt("goddamnit shut up i get it.", CHIYURI.CRINGE),
	txt("can you at least do something to help?", "chiyuri"),
	txt("of course! dear student,#i bear the biggest cross of them all...#interpersonal relationships.", YUMEMI.ANNOYED),
	txt("you see, in this dangerous world,#being able to socialize is key.", YUMEMI.ANNOYEDPOINT),
	txt("why, if we spin it well,#i'm sure we can even exchange for#magical goods with these fine people.", YUMEMI.ELEMENTARY),
	txt("look! there's a nice-looking youkai over there!", YUMEMI.HAPPY),
	txt("do you really think that's a good idea?", CHIYURI.BORED),
	txt("certainly!#i majored in communications, after all.", YUMEMI.ELEMENTARY),
	txt("you did???????", CHIYURI.WOAH),
	txt("come now, no time to waste!", YUMEMI.HAPPY),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {ISAAC.state = st_standard};
}
function txt_tutorial5() {
	
	msg = msglang([
	
	txt("why hello there, Fine Citizen of this#wonderful Gensokyo. would you perhance be#interested in some light bartering of wares?", YUMEMI.HAPPYOPEN, SPRITEPOS.LEFT, u, function(){ISAAC.state = st_lock}),
	txt("uhhhhhhhhh i guess?", MIKE.NOTHING),
	txt("splendid! we recently came across these relics.#my thorough analysis has concluded that#they are composed of extraordinary,#perhaps even magically significant stone.", YUMEMI.HAPPY),
	txt("the izanagi plate itself was carved#countless years ago, yes,#for the sole purpose of crafting these-", YUMEMI.ELEMENTARY),
	txt("HOLY SHIT ARE THOSE THE HAKUREI YIN-YANG ORBS ?", MIKE.NOTHING),
	txt("yes.", CHIYURI.PHONE),
	txt("we want that.#deal?", CHIYURI.BORED),
	txt("DEAL", MIKE.NOTHING),
	txt("well done, my progeny!#you're already learning.", YUMEMI.HAPPYOPEN, SPRITEPOS.LEFT, u, function(){c_removeitem(ITEMS.YINYANG) c_additem(ITEMS.NUETAIL)}),
	txt("yup . thanks boss. .m", CHIYURI.PHONE),
	txt("anyway we're spending the next week here so-", YUMEMI.NOTMYPROBLEM),
	txt("a fuckinG WEEK???????????????????", CHIYURI.CRINGE),
	txt("Chiyuri. my Dearest.#i know you want to go back Home#and eat your hot chip.#and get victory royale.", YUMEMI.NERVOUSFIST),
	txt("but.", YUMEMI.ANNOYED),
	txt("the statute of limitations for grand theft auto#is one week.", YUMEMI.NERVOUS),
	txt("FUCK", CHIYURI.DAMN),
	txt("be grateful that we do not live in this age#or it would probably be much longer", YUMEMI.EXPLAINING),
	txt("how are we going to get food??", CHIYURI.CRINGE),
	txt("did you not just lay witness to#my mastery of the art of trade?", YUMEMI.SMUG),
	txt("i can't believe this.", CHIYURI.PHONE),
	txt("girls' week out!#wooo!#vacation!!", YUMEMI.HAPPYOPEN, SPRITEPOS.LEFT),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {with instance_create(0, 0, o_doors) target = TITLE};
}