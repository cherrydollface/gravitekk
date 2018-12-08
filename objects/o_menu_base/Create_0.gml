/// @description Insert description here
// You can write your code in this editor

// menu entries
// default empty interpretator
depth = -100;
interceptKeyboard = false;
alarm_set(0, 2);

menu_interpretator = scr_placeholder;
menu_parent = noone;
global.gamestate = STATE_PAUSE;

blinkAlpha = 1;
scr_init_menu_variables();

activeMenu = MENU_MAIN_NEW_GAME;
menuIsActive = false;

mouseInput = true;


saveGameLevel = "startMenu";

// Misc values
spaceBetweenPositions = CELLSIZE * 2; 

// Menu cursor position
menuPosition = 0;

oldmouseX = 0;
oldmouseY = 0;

drawPositionOffsetX = 0;
drawPositionOffsetY = 0;


load_localization_file("menu_ui.json")
