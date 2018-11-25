	scr_initialize_saved_games_values();
	var xPos = scr_get_menu_x_positions();
	var yPos = scr_get_menu_y_positions(PAUSE_MENU_POSITIONS_LIMIT);
	
	switch(argument0){
		case MENU_PAUSE_RESUME:{
			scr_delete_file(SCREENSHOT_FOLDER, SCREENSHOT_TMP);
			scr_unpause_game();
			menuPosition = 0;
			break;
		}
		case MENU_PAUSE_SAVE:{
            playerInput = PLAYER_INPUT_DISABLED;
            activeMenu = MENU_PAUSE_SAVE;
			menuPosition = 0;
			break;
		}
		case MENU_PAUSE_LOAD:{
            playerInput = PLAYER_INPUT_DISABLED;
            activeMenu = MENU_PAUSE_LOAD;
			menuPosition = 0;
			break;
		}
		case MENU_PAUSE_OPTION:{
			playerInput = PLAYER_INPUT_DISABLED;
            activeMenu = MENU_PAUSE_OPTION;
			menuPosition = 0;
			break;
		}
		case MENU_PAUSE_QUIT:{
			game_end();
			break;
		}
		case MENU_TEST:{
            //scr_test();
			instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_debug_chapter_select);
			break;
		}
	}
	instance_destroy(self);
//}
/*
else if (activeMenu == MENU_PAUSE_SAVE){
	scr_save(argument0);
	scr_place_tmp_scr_to_savegame(argument0);
}

else if (activeMenu == MENU_PAUSE_LOAD || activeMenu == MENU_MAIN_LOAD){
	scr_load(argument0);
}
*/
show_debug_message("Can't find value in #macro (scr_execute_menu_command) value (" + string(argument0) + ")");