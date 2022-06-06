function c_generatedeck(spells, nonspells, order=[SPELL.NON, SPELL.CARD, SPELL.NON]) {
	var deck = [];
	var used = [[],[]];
	log("generating deck");
	log(spells)
	log(nonspells);
	var rnging;
	var i;
	for(i=0; i<array_length(order); i++) {
		switch order[i] {
			case SPELL.NON:
				do {
					rnging = irandom(array_length(nonspells)-1);
				} until !array_contains(used[0], rnging);
				array_push(deck, nonspells[rnging]);
				array_push(used[0], rnging);
				break;
			case SPELL.CARD:
				do {
					rnging = irandom(array_length(spells)-1);
				} until !array_contains(used[1], rnging);
				array_push(deck, spells[rnging]);
				array_push(used[1], rnging);
				break;
		}
	}
	log("deckgen done");
	return deck;
}
enum SPELL {
	NULL,
	NON,
	CARD,
	
	SIZE
}