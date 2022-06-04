function lb_auto(str, maxlength) {
	var possible = true;
	var i, j;
	lbcount = 0;
	for (i=0; i<string_length(str); i++) {
		if string_char_at(str, i) == "#" lbcount = 0;
		if string_char_at(str, i) == "|" lbcount -= 2;
		if lbcount >= maxlength {
			for (j=0; j<lbcount; j++) {
				if string_char_at(str, i-j) == " " {
					str = string_insert("#", str, i-j);
					str = string_delete(str, i-j+1, 1);
					possible = true;
					break;
				}
				possible = false;
			}
			lbcount = 0;
		}
		lbcount++;
	}
	
	return str;
}