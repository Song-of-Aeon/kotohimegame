c_input();
c
if left pos = 0;
if up pos = 1;
if down pos = 2;
if right pos = 3;
if select && count > 2 switch pos {
	default:
		room_goto(BASEMENT); global.currentstage = 0 global.currentday = DAY.WEDNES restart_items() global.gameplay = false c_flash(global.surfaces.HUD, 120, c_white);
		break;
	case 1:
		if file_exists("hi guys.kotohime")
			room_goto(BASEMENT); global.MenuCursor.disabled = true global.currentstage = 3 global.currentday = DAY.WEDNES restart_items() global.gameplay = false c_flash(global.surfaces.HUD, 120, c_white);
		break;
	case 2:
		if file_exists("you've won.kotohime")
			room_goto(WHOAMI); global.MenuCursor.disabled = true global.gameplay = true;
		break;
	case 3:
		if file_exists("you've won.kotohime")
			room_goto(BASEMENT); global.MenuCursor.disabled = true global.currentstage = 4 global.currentday = DAY.WEDNES restart_items() global.gameplay = false c_flash(global.surfaces.HUD, 120, c_white);
		break;
}