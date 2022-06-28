function cpp() {
	if !global.yieldtime {
		count++;
		global.yieldtime--;
	}
}
function cmm() {
	count--;
}