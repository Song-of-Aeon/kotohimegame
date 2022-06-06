c_input();
scroll = clamp(scroll+right*5-left*5, 0, scrollmax);
if back {
	room_goto(TITLE);
}