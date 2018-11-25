/// @description Insert description here
// You can write your code in this editor
// If game is paused, draw menu

if !menuIsActive return 0;

if (activeMenu == MENU_MAIN){
            menuElements = mainMenuElements;
			scr_draw_menu();
            }

if (activeMenu == MENU_PAUSE){  
			scr_draw_cover_of_darkness();
            menuElements = pauseMenuElements;
	//		scr_initialize_saved_games_values();
			scr_draw_menu();
            }
            
if ((activeMenu == MENU_PAUSE_SAVE) || (activeMenu == MENU_PAUSE_LOAD) || (activeMenu == MENU_MAIN_LOAD)){  
			scr_draw_cover_of_darkness();
			scr_initialize_menus();
            menuElements = savedGames;
			// Enable player mouse input status for skip double screen activation.
            playerInput = PLAYER_INPUT_ENABLED;		
			scr_draw_menu();
            }
			
if(activeMenu == MENU_MAIN_OPTION){
			scr_draw_cover_of_darkness();
            menuElements = optionsMenu;
			playerInput = PLAYER_INPUT_ENABLED;	
			scr_draw_menu();
            }
			
if(activeMenu == MENU_PAUSE_OPTION){
			scr_draw_cover_of_darkness();
            menuElements = optionsMenu;
			playerInput = PLAYER_INPUT_ENABLED;	
			scr_draw_menu();
            }
