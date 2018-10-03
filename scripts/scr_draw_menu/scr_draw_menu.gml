global.cursorStatus = CURSOR_ENABLED;
//scr_draw_cover_of_darkness();
scr_draw_menu_board();		
scr_draw_cursor();

// If game is paused, draw menu
/*
switch (argument0){
	case STATE_MENU:{
            global.menuElements = global.mainMenuElements;
			//scr_draw_menu();
			global.cursorStatus = CURSOR_ENABLED;
			scr_draw_cover_of_darkness();
			scr_draw_menu_board();		
			scr_draw_cursor();
			break;
		}

	case STATE_PAUSE:{  
            global.menuElements = global.pauseMenuElements;
	//		scr_initialize_saved_games_values();
			//scr_draw_menu();
			global.cursorStatus = CURSOR_ENABLED;
			scr_draw_cover_of_darkness();
			scr_draw_menu_board();		
			scr_draw_cursor();
			break;
		}
            
	case (STATE_SAVE || STATE_LOAD || STATE_MENU_LOAD):{  
			scr_initialize_menus();
            global.menuElements = global.savedGames;
			
			// Enable player mouse input status for skip double screen activation.
            global.playerInput = PLAYER_INPUT_ENABLED;		
			//scr_draw_menu();
			global.cursorStatus = CURSOR_ENABLED;
			scr_draw_cover_of_darkness();
			scr_draw_menu_board();		
			scr_draw_cursor();
			break;
		}
			
	case STATE_MENU_OPTIONS:{
            global.menuElements = global.optionsMenu;
			global.playerInput = PLAYER_INPUT_ENABLED;	
			//scr_draw_menu();
			global.cursorStatus = CURSOR_ENABLED;
			scr_draw_cover_of_darkness();
			scr_draw_menu_board();		
			scr_draw_cursor();
			break;
		}
			
	case MENU_PAUSE_OPTION:{
            global.menuElements = global.optionsMenu;
			global.playerInput = PLAYER_INPUT_ENABLED;	
			//scr_draw_menu();
			global.cursorStatus = CURSOR_ENABLED;
			scr_draw_cover_of_darkness();
			scr_draw_menu_board();		
			scr_draw_cursor();
			break;
		}
	default: 
	{
		show_debug_message("Warning! scr_draw_menu take unrecognized value" + argument0);
		}
}
*/