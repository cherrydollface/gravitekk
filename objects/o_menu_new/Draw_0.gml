/// @description Insert description here
// You can write your code in this editor
// If game is paused, draw menu

if !menuIsActive return 0;

if (global.activeMenu == MENU_MAIN){
            global.menuElements = global.mainMenuElements;
			scr_draw_menu();
            }

if (global.activeMenu == MENU_PAUSE){  
			scr_draw_cover_of_darkness();
            global.menuElements = global.pauseMenuElements;
	//		scr_initialize_saved_games_values();
			scr_draw_menu();
            }
            
if ((global.activeMenu == MENU_PAUSE_SAVE) || (global.activeMenu == MENU_PAUSE_LOAD) || (global.activeMenu == MENU_MAIN_LOAD)){  
			scr_draw_cover_of_darkness();
			scr_initialize_menus();
            global.menuElements = global.savedGames;
			// Enable player mouse input status for skip double screen activation.
            global.playerInput = PLAYER_INPUT_ENABLED;		
			scr_draw_menu();
            }
			
if(global.activeMenu == MENU_MAIN_OPTION){
			scr_draw_cover_of_darkness();
            global.menuElements = global.optionsMenu;
			global.playerInput = PLAYER_INPUT_ENABLED;	
			scr_draw_menu();
            }
			
if(global.activeMenu == MENU_PAUSE_OPTION){
			scr_draw_cover_of_darkness();
            global.menuElements = global.optionsMenu;
			global.playerInput = PLAYER_INPUT_ENABLED;	
			scr_draw_menu();
            }
