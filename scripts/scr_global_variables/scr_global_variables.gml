///Initializing global variables
//global.activeMenu = "None";
global.menuElements = 0;
global.mainMenuElements = 0;
global.pauseMenuElements = 0;
global.menuPosition = 0;
global.keyboardInput = KEYBOARD_INPUT_DISABLED;

global.cursorPosition[0, 0] = MENU_X_POSITION - 9;
global.cursorPosition[0, 1] = global.menuPosition * 64 + (MENU_Y_POSITION + 16);

global.cursorStatus = CURSOR_ENABLED;
global.cursorPositionInArray = 0;

global.menuPosition = 0;

global.playerInput = PLAYER_INPUT_ENABLED;

global.currentSoundValue = DEFAULT_SOUND_VALUE;
global.currentMusicValue = DEFAULT_MUSIC_VALUE;

global.temporarySaveSlotsImage = 0;
global.temporarySaveSlotsDescription = 0;