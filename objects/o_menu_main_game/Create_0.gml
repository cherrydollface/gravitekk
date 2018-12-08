/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

drawPositionOffsetX = 0;
drawPositionOffsetY = -CELLSIZE * 2;
menu_interpretator = scr_pause_menu_handler;

menuElements[0] = "Resume";
menuElements[1] = "Save"; 
menuElements[2] = "Load";
menuElements[3] = "Options";
menuElements[4] = "Restart mission";
menuElements[5] = "Quit to main menu";
menuElements[6] = "Quit game";
menuElements[7] = "/// Mission select";
menuElements[8] = "/// Chapter select";