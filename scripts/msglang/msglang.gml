function msglang(english, japanese, language=global.lang) {
	switch language {
		case LANGUAGE.ENGLISH:
			return english;
			break;
		case LANGUAGE.JAPANESE:
			return japanese;
			break;
		default:
			return [txt()];
			break;
	}
}


enum LANGUAGE {
	NULL,
	ENGLISH,
	JAPANESE,
}