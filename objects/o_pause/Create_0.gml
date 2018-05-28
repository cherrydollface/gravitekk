// Pause menu 
scr_global_variables();

// todo create ini file with menu localization
// Available selections in pause menu
pauseMenu[0] = "Resume";
pauseMenu[1] = "Save"; 
pauseMenu[2] = "Load";
pauseMenu[3] = "Option";
pauseMenu[4] = "Quit";
pauseMenu[5] = "Test";

global.pauseMenuElements = pauseMenu;

// Available selections in main menu
menu[0] = "Start"; 
menu[1] = "Load";
menu[2] = "Option";
menu[3] = "About";
menu[4] = "Quit";

global.mainMenuElements = menu;

global.menuElements = menu;

global.playerInput = PLAYER_INPUT_ENABLED; 

global.saveGameLevel = "startMenu";

// Misc values
spaceBetweenPositions = 64; 

// Menu cursor position
menuPosition = 0; 