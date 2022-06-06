// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function step1() constructor{
	log("i am step 1");	
}

function step2() : step1() constructor{
	log("i am step 2");
}

function step3() : step2() constructor{
	log("i am step 3");
}
nu step3();