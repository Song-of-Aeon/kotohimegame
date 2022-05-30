function txt_reimututorial() {
	
	msg = msglang([
	
	txt("Hello!", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	//txt("Hello!", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	//txt("hi aqwa!", REISEN.HAPPY, SPRITEPOS.LEFT),
	txt("Welcome to the tutorial.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Well that's a bit pathetic, isn't it?#Fourth wall break immediately, huh?", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("Yeah, shove it.#Play Chiyuri if youre gonna cry about it.", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("This is only for the internal demo, anyway.#Later there'll be something nicer.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Aaaaand Chiyuri and Yumemi are a bit verbose.#Not a terribly helpful tutorial.", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("Neither is this, so far.#Let's get on with it.", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("So, this game uses an item-based system.#Proper roguelike, you see.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("You can pick up a bunch of stuff#that helps you in various ways.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Ever play Unconnected Marketeers?#That but more.", REIMU.WINKING, SPRITEPOS.MIDRIGHT),
	txt("Case in point, your shot type and bombs are items.#You can get rid of or replace them.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Here, try out my shots. Persuasion Needles,#you know the drill.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT, u, function(){c_additem(ITEMS.NEEDLES)}),
	txt("Of course, you'll have to wait until the#end of the textbox to use them...", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("You can hold control to go straight through it,#but there's one more thing#I ought to tell you here.", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("Stages in this game are separated into cells.#There's a bunch of mini-stages in the map,#with special ones like minibosses#and shops strewn about.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Bosses work as you expect,#and we'll get to shops later.", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("Anyway, press tab to bring the map up when you're#not in combat or dialogue.#The tutorial stage is linear,#so you'll just go straight forward.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	
	],[
	
	txt("WEED"),
	
	])
	
	endevent = function() {ISAAC.state = st_standard /*c_getroom().step = function() {
		count++;
		if ncm() {
			
		}
	}c_moveroom(o_roommanager.rooms[1][0])*/};
}
function txt_reimututorial1point5() {
	
	msg = msglang([
	
	txt("Simple enough, right?", REIMU.WINKING, SPRITEPOS.MIDRIGHT),
	txt("There's a lot of stuff in this game,#but even if all you can do is dodge normally,#you'll be able to go a while.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Of course, later stages will expect you to be#paying attention to what you carry.#Not that those stages exist yet...", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("So I bet you've got some questions about#what just happened, supposing you downed#at least one fairy.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Weird item drops!#What's up with those FIVE stats!?", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("Five stats, you're reading it right.#Enemies will be dropping all types,#but each cell favors one in particular.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Red is SHOT POWER. It-#Wait, let me retry that.", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT), //colored text
	txt("Red is |c255000000SHOT POWER|c.#That's the ticket.", REIMU.WINKING, SPRITEPOS.MIDRIGHT),
	txt("It increases the effectiveness of your shots.#It doesn't actually increase a damage multiplier,#but you shoot more so it deals more damage.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Blue is |c000000255OPTIONS|c.#Options are those little things that#follow you and shoot; you can see them in#almost all of the integer games.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Recently, they kind of have replaced shot types,#since they both kinda work the same way.", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("In this game, they're a bit different,#but they're still shooting familiars.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("They're active any time you're shooting normally.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("The stat is what determines how many you have.#The term \"option\" comes from Gradius.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("This is kind of getting long so I'll give you#about two seconds of gameplay.", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("Here's my options, the Yin-Yang Orbs.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT, u, function(){c_additem(ITEMS.YINYANG)}),
	
	],[
	
	txt("WEED"),
	
	])
	
	endevent = function() {ISAAC.state = st_standard};
}

function txt_reimututorial2() {
	
	msg = msglang([
	
	txt("So alright, next up, stat three.#Green for |c000255000AGILITY|c. ", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Makes you go faster while unfocused,#and slower while unfocused.#What you want this to sit at#probably depends on how you like to move.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Don't worry, you'll be able to manage it.#I'll get to how later.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Orange is |c255128000POINT OF COLLECTION|c.#It's how far down the line that#autograbs items is.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Sound useless? Well, a bit.#It's good for something else.", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("Again, getting to that later.", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("Finally, finally, cyan. |c000255255RADIUS|c.  ", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("How big your item collection area#and grazebox are.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Grazebox: hitbox for grazing.", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("You may notice that we don't have a score system.#What's grazing good for?", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("I'm postponing that explanation as well.", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("Alright, shoot something.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {ISAAC.state = st_standard};
}

function txt_reimututorial3() {
	
	msg = msglang([
	
	txt("Hello again.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Getting used to the map system?#It gets a lot bigger in the actual game.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Enough messing around though,#I think we both know I'm holding out on you.", REIMU.WINKING, SPRITEPOS.MIDRIGHT),
	txt("\"Where's my bombs!?\"", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("Right here.#This one is Yumemi's, \"AMEA type Staurogram\".", REIMU.HAPPY, SPRITEPOS.MIDRIGHT, u, function(){c_additem(ITEMS.STAUROGRAM)}),
	txt("Bombs are spellcards, canonically.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Of course, they usually still act as you'd#expect when you use them.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Since you can buy and sell them, each one#tends to be more specialized. For instance,#this one is only really useful a set#distance away, instead of the whole screen.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Also, they charge up over time#instead of refreshing on death.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Whenever you clear a combat cell or end a#boss spellcard, you'll get a charge.#The amount of charge needed and max capacity#of spellcards varies per-item.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("So there's that, but there's another type of bomb.", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("These ones charge up on graze, and are more of an#alt-weapon than a big screen clear.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Things like that are called flashbombs in Len'en.#I haven't thought of a name for them here yet,#so that's what I'm calling them for now.", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("I'm just giving you a bomb for now,#so look for flashbombs later in-game.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {ISAAC.state = st_standard};
}
function txt_reimututorial4() {
	
	msg = msglang([
	
	txt("Congrats, that's all the combat segments#in the tutorial here.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("I've got a few footnotes here...", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("So, different characters start with#different items.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("For example, I start with my needles#and Yin-Yang Orbs.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Shot and options.#Generally focusing on screen coverage.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Chiyuri starts with both AMEA items,#one of which is a shot, and the other is a bomb.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("A lot more focused, forward damage.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Although a bit weirder than#the usual forward-damage girl.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Where'd she go, anyway...?", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("I'm messing with you.#I know where she is. I made the game.#She's an unlockable character (later).", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("Anyway, you might think it's a massive#disadvantage to start without a bomb.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("But here, it shouldn't be too bad,#since we have an HP system.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Hm? Oh yeah, HP.", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("You start with 7 hp per life, and everything#currently deals three damage.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("HP can be restored more than a few ways,#but once you lose a life,#it's hard to get another.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Okay, that's enough of that.#Next, the shop.", REIMU.WINKING, SPRITEPOS.MIDRIGHT),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {ISAAC.state = st_standard};
}
function txt_reimututorial5() {
	
	msg = msglang([
	
	txt("So here we are. The big one.#This is where you're getting your stuff.", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Oh, the shrine maiden!#Need something for the road?", MIKE.NOTHING, SPRITEPOS.RIGHT),
	txt("What? Yeah, in a bit.", REIMU.CONCERNED, SPRITEPOS.MIDLEFT),
	txt("Anyway, when you go to a shop,#you can sell your stats to buy items.", REIMU.HAPPY, SPRITEPOS.CENTER),
	txt("Told you I'd get back to what they're good for.", REIMU.WINKING, SPRITEPOS.CENTER),
	txt("Um, who are you talking to?", MIKE.NOTHING, SPRITEPOS.RIGHT),
	txt("Jesus, kid, hold on.#I'm hosting a tutorial here.", REIMU.UNIMPRESSED, SPRITEPOS.MIDLEFT),
	txt("Okay...", MIKE.NOTHING, SPRITEPOS.RIGHT),
	txt("You can sell stats by the integer,#each worth one credit.", REIMU.HAPPY, SPRITEPOS.CENTER),
	txt("Credit goes away when leaving a store,#so be careful with it!", REIMU.WINKING, SPRITEPOS.CENTER),
	txt("From there, you can buy stuff to permanently#add to your inventory.", REIMU.HAPPY, SPRITEPOS.CENTER),
	txt("You can also sell any of your items.#If you want to jumpstart your run,#you can even sell your starting gear.", REIMU.CONCERNED, SPRITEPOS.CENTER),
	txt("Since I'm a pre-compiled array of#nondynamic strings, I don't know if you have#enough stats to sell for anything.", REIMU.UNIMPRESSED, SPRITEPOS.CENTER),
	txt("I'm also not going to open the shop UI for you,#because I've gotta keep this tutorial on-track.", REIMU.HAPPY, SPRITEPOS.CENTER),
	txt("Vaguely though, this is how it goes.", REIMU.HAPPY, SPRITEPOS.CENTER),
	txt("Hey, youkai catgirl.", REIMU.UNIMPRESSED, SPRITEPOS.MIDLEFT),
	txt("Do you really want to buy something?", MIKE.NOTHING, SPRITEPOS.RIGHT),
	txt("Yeah, get over here. What do you have?", REIMU.UNIMPRESSED, SPRITEPOS.MIDLEFT),
	txt("There's, uh...", MIKE.NOTHING, SPRITEPOS.RIGHT),
	txt("A coin from the outside, a shimenawa,#and a bow from the moon.", MIKE.NOTHING, SPRITEPOS.RIGHT),
	txt("You don't have much of a coherent brand, do you?", REIMU.CONCERNED, SPRITEPOS.MIDLEFT),
	txt("I, well-", MIKE.NOTHING, SPRITEPOS.RIGHT),
	txt("Whatever, give me the bow.", REIMU.UNIMPRESSED, SPRITEPOS.MIDLEFT),
	txt("You can have my options.", REIMU.WINKING, SPRITEPOS.MIDLEFT, u, function(){c_additem(ITEMS.CRESCENTBOW) c_removeitem(ITEMS.YINYANG)}),
	txt("What the hell is an option?", MIKE.NOTHING, SPRITEPOS.RIGHT),
	txt("Great doing business with you.", REIMU.HAPPY, SPRITEPOS.MIDLEFT),
	txt("And that's all there is to it!", REIMU.WINKING, SPRITEPOS.MIDLEFT),
	txt("Basically.", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("I tried making this so you wouldn't have to#sit through Chiyuri and Yumemi's tutorial,#but this one isn't much more brief, is it?", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("Whatever, there's a lot of mechanics.", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	txt("If they feel stupidly complex or something,#send a message in the Discord.", REIMU.CONCERNED, SPRITEPOS.MIDRIGHT),
	txt("We did our best to throw things in#without compromising the main gameplay style of#\"dodge bullet\".", REIMU.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("okay bye", REIMU.UNIMPRESSED, SPRITEPOS.MIDRIGHT),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {with instance_create(0, 0, o_doors) target = TITLE};
}