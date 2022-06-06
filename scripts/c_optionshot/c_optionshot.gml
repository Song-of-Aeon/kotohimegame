function c_optionshot(ncm_, who_) {
	with ISAAC {
		if ((shooth && (myactive[0].activetype = ACTIVES.SHOT || myactive[0] = c_getitembyid(ITEMS.NULL)))
		|| (bombh && (myactive[1].activetype = ACTIVES.SHOT || myactive[1] = c_getitembyid(ITEMS.NULL)))
		|| (specialh && (myactive[2].activetype = ACTIVES.SHOT || myactive[2] = c_getitembyid(ITEMS.NULL))))
		&& ncm(ncm_) && state == st_standard {
			with who_ {pulse++};
		}
	}
}