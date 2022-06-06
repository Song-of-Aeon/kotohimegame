global.shop = {};

global.shop.null = {
	hitext: method(undefined, function() {msg = [txt("Whatcha buyin'?")] endevent = c_null}),
	buytext: method(undefined, function() {msg = [txt("Deal!")] endevent = c_null}),
	selltext: method(undefined, function() {msg = [txt("I'll take that off your hands...")] endevent = c_null}),
	cantbuytext: method(undefined, function() {msg = [txt("Just window-shopping?")] endevent = c_null}),
	sprite: s_mike16,
	banter: [method(undefined, function() {
		msg = msglang([
	
		txt("SHOPNULL|w0120 |-|-"),
	
		],[
	
		txt("NIHONGO WA MUZUKASHII"),
	
		])
	
		endevent = c_null;
	}),
	method(undefined, function() {
		msg = msglang([
	
		txt("SHOPNULL2|w0120 |-|-"),
	
		],[
	
		txt("DIE"),
	
		])
	
		endevent = c_null;
	}),
	
	]
}
global.shop.mike = {
	hitext: method(undefined, function() {msg = [txt("Whatcha buyin'?")] endevent = c_null}),
	buytext: method(undefined, function() {msg = [txt("Deal!")] endevent = c_null}),
	selltext: method(undefined, function() {msg = [txt("I'll take that off your hands...")] endevent = c_null}),
	cantbuytext: method(undefined, function() {msg = [txt("Just window-shopping?")] endevent = c_null}),
	sprite: s_mike16,
	banter: [method(undefined, function() {
		msg = msglang([
	
		txt("Hey, you over there!#Buy something!|w0120 |-|-"),
	
		],[
	
		txt("おいそこの君\n買いませんか"),
	
		])
	
		endevent = c_null;
	}),
	method(undefined, function() {
		msg = msglang([
	
		txt("HEY EVERY       !|w0120 |-|-"),
	
		],[
	
		txt("DONT KNOW SPAMTONJP :["),
	
		])
	
		endevent = c_null;
	}),
	
	]
}
global.shop.reisen = {
	hitext: method(undefined, function() {msg = [txt("Whatcha buyin'?")] endevent = c_null}),
	buytext: method(undefined, function() {msg = [txt("Deal!")] endevent = c_null}),
	selltext: method(undefined, function() {msg = [txt("I'll take that off your hands...")] endevent = c_null}),
	cantbuytext: method(undefined, function() {msg = [txt("Just window-shopping?")] endevent = c_null}),
	sprite: s_impossiblereisen,
	banter: [method(undefined, function() {
		msg = msglang([
	
		txt("wass good|w0120 |-|-"),
	
		],[
	
		txt("おいそこの君\n買いませんか"),
	
		])
	
		endevent = c_null;
	}),
	method(undefined, function() {
		msg = msglang([
	
		txt("buy my shit|w0120 |-|-"),
	
		],[
	
		txt("DONT KNOW SPAMTONJP :["),
	
		])
	
		endevent = c_null;
	}),
	
	]
}

global.shopaunn = {
	hitext: method(undefined, function() {msg = [txt("why am i here..........................................", "Aunn")]}),
	buytext: method(undefined, function() {msg = [txt("ok.......................................", "Aunn")]}),
	selltext: method(undefined, function() {msg = [txt("if you say so.......................................", "Aunn")]}),
	cantbuytext: method(undefined, function() {msg = [txt("um............................................", "Aunn")]}),
}