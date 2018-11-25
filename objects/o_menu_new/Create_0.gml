/// @description Insert description here
// You can write your code in this editor
// Pause menu 
blinkAlpha = 1;
scr_global_variables();
//global.gameState = STATE_MENU;
activeMenu = MENU_MAIN;//MENU_MAIN;
menuIsActive = false;

// todo create ini file with menu localization
// Available selections in pause menu

pauseMenu[0] = "Resume";
pauseMenu[1] = "Save"; 
pauseMenu[2] = "Load";
pauseMenu[3] = "Option";
pauseMenu[4] = "Quit";
pauseMenu[5] = "Test";

pauseMenuElements = pauseMenu;

// Available selections in main menu
menu[0] = "Start"; 
menu[1] = "Load";
menu[2] = "Option";
menu[3] = "About";
menu[4] = "Quit";

mainMenuElements = menu;

// Available selections in option menu
optionsMenu[0] = "Music";
optionsMenu[1] = "Sound";

optionsMenu = optionsMenu;

menuElements = menu;

playerInput = PLAYER_INPUT_ENABLED; 

saveGameLevel = "startMenu";

// Misc values
spaceBetweenPositions = 64; 

// Menu cursor position
menuPosition = 0; 