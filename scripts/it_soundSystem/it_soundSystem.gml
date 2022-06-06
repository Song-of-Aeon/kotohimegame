function Sound(_soundID/*:int*/, _volume/*:int*/) constructor{
	static Play = function(){
		global.SoundSystem.Play(volume,soundID);
	}
	soundID = _soundID;
	volume = _volume;
}
global.SoundSystem = {
	onstep: function(player/*:ISAAC*/=global.me ) {
		//log("piss balls");
	},
	Play: function(volume/*:int*/, soundID/*:int*/){
		audio_play_sound(soundID,3,0);
	},
	myhooks : {onstep: true, },
	name: "sound",
	description: "sound up",
	sprite: s_null,
	quality: 1,
	usage: ITTYPE.MECHANIC,
}

itemgen(SoundSystem, ITEMS._SOUND);
