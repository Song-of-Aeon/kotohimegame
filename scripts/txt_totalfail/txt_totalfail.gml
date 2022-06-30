function txt_totalfail() {
	
	msg = msglang([
	
	ntxt(0, u, u, u, function() {instance_create(640, 360, o_bjection).image_index = 2}),
	txt("...I don't see it.", KAGUYA2.NORMAL),
	txt("...My finger slipped.", KOTOHIME.NERVOUS),
	txt("A-allow me once more.", KOTOHIME.NERVOUS),
	txt("The final reason you're perfect for this is...!", KOTOHIME.WINK),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		c_evidencegen(8, txt_totalfail, txt_closing);
	};
}