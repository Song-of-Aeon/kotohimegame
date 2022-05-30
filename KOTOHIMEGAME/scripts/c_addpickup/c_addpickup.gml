function c_addpickup(type, amount) {
	audio_play_sound(snd_fairyshoot,0,false);
	var oldStatLevel = ISAAC.pickups[type];
	STATS.statsgotten += amount;
	ISAAC.pickups[((type-1)%5)+1] += c_getpickupbyid(type).value*amount;
	c_stateval();
	if(floor(oldStatLevel) != floor(ISAAC.pickups[type]))
		c_statthreshold(type);
	/*if(ISAAC.pickups[type]%1 == 0 && ISAAC.pickups[type] != 0){
		c_statthreshold(type);
	}*/
}