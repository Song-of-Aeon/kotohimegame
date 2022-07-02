enum DAY {
	WEDNES,
	THURS,
	FRI,
	SATUR,
	SUN,
}

global.stages = [

[{}, {}, {}, {}, {}, {}, {}, {}], //wednesday
[{}, {}, {}, {}, {}, {}, {}, {}], //thursday (moon)
[{}, {}, {}, {}, {}, {}, {}, {}], //friday (makai)
[{}, {}, {}, {}, {}, {}, {}, {}], //saturday (dream)
[{}, {}, {}, {}, {}, {}, {}, {}], //sunday

]
global.doingtutorial = false;
global.currentday = DAY.THURS;
global.currentstage = 0;
global.playingstage = c_getstage();



//fl_cooltest();
fl_thursday1();
fl_thursday2();

fl_tutorial();
fl_test();
fl_testwo();
fl_testhree();
fl_testfour();
fl_loadstage();
fl_endstage();
fl_epiloguestage();
fl_epiloguestage2();

