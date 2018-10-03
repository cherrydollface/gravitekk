#macro MASK_BOTTOM_RIGHT 7
#macro MASK_TOP_RIGHT 6
#macro MASK_TOP_LEFT 5
#macro MASK_BOTTOM_LEFT 4
#macro MASK_BOTTOM 3
#macro MASK_RIGHT 2
#macro MASK_TOP 1
#macro MASK_LEFT 0
#macro BGSTATE_FADE_IN 2
#macro BGSTATE_FADE_OUT 1
#macro BGSTATE_IDLE 0
#macro STATE_PAUSE 2
#macro STATE_GAME 1
#macro STATE_CUTSCENE 0
#macro CELLSIZE 32

//Cell variables
#macro SPACE_BETWEEN_POSITIONS 64 //64
#macro SPACE_BETWEEN_SAVED_PICS 96

//Main menu positions
#macro MENU_MAIN			0
#macro MENU_MAIN_START		1
#macro MENU_MAIN_LOAD		2
#macro MENU_MAIN_OPTION		3
#macro MENU_MAIN_ABOUT		4
#macro MENU_MAIN_QUIT		5

//Pause meun positions
#macro MENU_PAUSE			7
#macro MENU_PAUSE_RESUME	8
#macro MENU_PAUSE_SAVE		9
#macro MENU_PAUSE_LOAD		10
#macro MENU_PAUSE_OPTION	11
#macro MENU_PAUSE_QUIT		12

#macro MENU_TEST		13 // Test option in pause menu


//Menu positions
#macro MENU_X_POSITION	64 // 64
#macro MENU_Y_POSITION	96 // 96

//Cursor selection position
#macro CURSOR_LEFT_X_POSITION 0
#macro CURSOR_LEFT_Y_POSITION 0

//Cursor actived
#macro CURSOR_DISABLED	0
#macro CURSOR_ENABLED	1

//Save games
#macro SLOTS_FOR_SAVES 4

//Player input 
#macro PLAYER_INPUT_ENABLED		1
#macro PLAYER_INPUT_DISABLED	0

//Menu values
#macro MAIN_MENU_POSITIONS_LIMIT	5
#macro PAUSE_MENU_POSITIONS_LIMIT	7

//Keyboard input
#macro KEYBOARD_INPUT_DISABLED 0
#macro KEYBOARD_INPUT_ENABLED 1

//Music and Sound
#macro DEFAULT_MUSIC_VALUE 5
#macro DEFAULT_SOUND_VALUE 5
#macro MINIMAL_MUSIC_VALUE 0
#macro MINIMAL_SOUND_VALUE 0
#macro MAXIMAL_MUSIC_VALUE 10
#macro MAXIMAL_SOUND_VALUE 10

//Screenshot
#macro SCREENSHOT_TMP "ScreenTmp.png"
#macro SCREENSHOT_CLEAR "Screenshot_{}.png"
#macro SCREENSHOT_FOLDER working_directory + "\Screenshot\\"
