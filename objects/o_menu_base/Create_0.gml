/// @description Insert description here
// You can write your code in this editor

// menu entries
// default empty interpretator
interceptKeyboard = false;
alarm_set(0, 1);

menu_interpretator = scr_placeholder;
menu_parent = noone;
global.gamestate = STATE_PAUSE;

blinkAlpha = 1;
scr_global_variables();
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

load_localization_file("menu_ui.json")
