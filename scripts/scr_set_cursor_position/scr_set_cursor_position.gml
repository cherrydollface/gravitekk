///Set cursor X and Y values to draw at targeted menu position
global.cursorPosition[0, 0] = MENU_X_POSITION - 16;

if(global.activeMenu == MENU_PAUSE_LOAD || global.activeMenu == MENU_MAIN_LOAD){
	global.cursorPosition[0, 1] = (global.menuPosition + 1 ) * SPACE_BETWEEN_SAVED_PICS + 16;
} else {
	global.cursorPosition[0, 1] = global.menuPosition * SPACE_BETWEEN_POSITIONS + (MENU_Y_POSITION + 16);
}