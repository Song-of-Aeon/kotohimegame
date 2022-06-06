function ncm(val) { //not count mod value
	return !(count%val);
}

function ncmr(val, low, high) { //not count mod value within range
	return ncm(val) && count >= low && count <= high;
}

function ncml(val, low, repeats) { //not count mod value above minimum repeated
	//log(count);
	return ncm(val) && count >= low && count <= low+val*repeats;
}
function ncmltime(val, low, repeats) { //not count mod value above minimum repeated duration
	//log(count);
	return low+val*repeats;
}

function fdx(val, divisor, multiplier=1) { //floor divided by x
	return floor(val/divisor)*multiplier;
}

function itneg() { //tells you if youre on an odd iteration
	return (iterations%2)*-2+1;
}
function ineg(i) { //tells you if youre on an odd i
	return (i%2)*-2+1;
}