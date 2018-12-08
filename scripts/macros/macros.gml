#macro MASK_BOTTOM_RIGHT 7
#macro MASK_TOP_RIGHT 6
#macro MASK_TOP_LEFT 5
#macro MASK_BOTTOM_LEFT 4
#macro MASK_BOTTOM 3
#macro MASK_RIGHT 2
#macro MASK_TOP 1
#macro MASK_LEFT 0

#macro BGSTATE_SCROLL 3
#macro BGSTATE_FADE_IN 2
#macro BGSTATE_FADE_OUT 1
#macro BGSTATE_IDLE 0

#macro STATE_TRANSITION 4
#macro STATE_PAUSE 2
#macro STATE_GAME 1
#macro STATE_CUTSCENE 0
#macro CELLSIZE 32

// MISSION LAYERS
#macro LAYER_GROUND "Ground" 
#macro LAYER_AUX1 "Aux1"
#macro LAYER_SLIME "Slime"
#macro LAYER_AUX2 "Aux2"
#macro LAYER_SOLID "Solid"
#macro LAYER_OVERLAYS "Overlays"
#macro LAYER_SERVICE_TILESURFACER "TileSurfacer"
#macro LAYER_SERVICE_TILESURFACER_TOP "TileSurfacerTop"
#macro LAYER_SERVICE_SLIME_SLOTS "SlimeSlots"
#macro LAYER_DEFAULT_OBJECT "Instances"
#macro LAYER_DEFAULT_UI "UI"

// NOVEL LAYERS
#macro LAYER_CHARACTERS "Characters"

#macro NOVELL_TRIGGER_SERVICE_MESSAGE "!trigger"

// CONTENTS

#macro CHAPTER_PROLOGUE 0
#macro CHAPTER_1 1
#macro MISSION_1 2
#macro CHAPTER_2 3
#macro CHAPTER_3 4
#macro MISSION_2 5
#macro CHAPTER_4 6
#macro MISSION_3 7
#macro CHAPTER_5 8
#macro CHAPTER_6 9
#macro MISSION_4 10
#macro CHAPTER_7 11
#macro CHAPTER_8 12
#macro CHAPTER_9 13
#macro MISSION_5 14
#macro CHAPTER_10 15
#macro CHAPTER_11 16
#macro CHAPTER_12 17
#macro CHAPTER_13 18
#macro ENDOFDEMO 100

// SCRIPTED MAP TRIGGERS
#macro DOOR_OPEN 0
#macro DOUBLE_PAD 1
#macro PAD_SEQUENCE 2

//Cell variables
#macro SPACE_BETWEEN_POSITIONS 64 
#macro SPACE_BETWEEN_SAVED_PICS 96

//Main menu positions
#macro MENU_MAIN_NEW_GAME	0
#macro MENU_MAIN_LOAD		1
#macro MENU_MAIN_OPTION		2
#macro MENU_MAIN_ABOUT		3
#macro MENU_MAIN_QUIT		4
#macro MENU_MAIN_DEBUG1		5
#macro MENU_MAIN_DEBUG2		6

//In-game pause menu positions
#macro MENU_PAUSE_RESUME				0
#macro MENU_PAUSE_SAVE					1
#macro MENU_PAUSE_LOAD					2
#macro MENU_PAUSE_OPTION				3
#macro MENU_PAUSE_RESTART				4
#macro MENU_PAUSE_QUIT_TO_MAIN_MENU		5
#macro MENU_PAUSE_QUIT_GAME				6 
#macro MENU_PAUSE_DEBUG1				7
#macro MENU_PAUSE_DEBUG2				8

//Menu positions
#macro MENU_X_POSITION	256 
#macro MENU_Y_POSITION	160 

//Cursor selection position
#macro CURSOR_LEFT_X_POSITION 0
#macro CURSOR_LEFT_Y_POSITION 0

//For modal menus
#macro YES 1
#macro NO  0

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

//Localization
#macro UI_LANGUAGE "Default"