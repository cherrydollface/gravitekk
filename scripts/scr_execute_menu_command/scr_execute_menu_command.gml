if(global.activeMenu == MENU_MAIN){
	scr_initialize_saved_games_values();
	switch(argument0){
		case MENU_MAIN_START:{
			global.activeMenu = STATE_GAME;
	        room_goto(mission1);
			break;
		}
		case MENU_MAIN_LOAD:{
			global.playerInput = PLAYER_INPUT_DISABLED;
            global.activeMenu = MENU_MAIN_LOAD;
			global.menuPosition = 0;
			break;
		}
		case MENU_MAIN_ABOUT:{
		//TODO Add "About"
		break;
		}
		case MENU_MAIN_OPTION:{
			global.playerInput = PLAYER_INPUT_DISABLED;
            global.activeMenu = MENU_MAIN_OPTION;
			global.menuPosition = 0;
			break;
		}
		case MENU_MAIN_QUIT:{
			game_end();
			break;
		}
	}
}

else if (global.activeMenu == MENU_PAUSE){
	scr_initialize_saved_games_values();
	var xPos = scr_get_menu_x_positions();
	var yPos = scr_get_menu_y_positions(PAUSE_MENU_POSITIONS_LIMIT);
	
	switch(argument0){
		case MENU_PAUSE_RESUME:{
			scr_delete_file(SCREENSHOT_FOLDER, SCREENSHOT_TMP);
			scr_unpause_game();
			global.menuPosition = 0;
			break;
		}
		case MENU_PAUSE_SAVE:{
            global.playerInput = PLAYER_INPUT_DISABLED;
            global.activeMenu = MENU_PAUSE_SAVE;
			global.menuPosition = 0;
			break;
		}
		case MENU_PAUSE_LOAD:{
            global.playerInput = PLAYER_INPUT_DISABLED;
            global.activeMenu = MENU_PAUSE_LOAD;
			global.menuPosition = 0;
			break;
		}
		case MENU_PAUSE_OPTION:{
			global.playerInput = PLAYER_INPUT_DISABLED;
            global.activeMenu = MENU_PAUSE_OPTION;
			global.menuPosition = 0;
			break;
		}
		case MENU_PAUSE_QUIT:{
			game_end();
			break;
		}
		case MENU_TEST:{
            scr_test();
			break;
		}
	}
}

else if (global.activeMenu == MENU_PAUSE_SAVE){
	scr_save(argument0);
	scr_place_tmp_scr_to_savegame(argument0);
}

else if (global.activeMenu == MENU_PAUSE_LOAD || global.activeMenu == MENU_MAIN_LOAD){
	scr_load(argument0);
}

else show_debug_message("Can't find value in #macro (scr_execute_menu_command) value (" + string(argument0) + ")");