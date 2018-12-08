	var xPos = scr_get_menu_x_positions();
	var yPos = scr_get_menu_y_positions(PAUSE_MENU_POSITIONS_LIMIT);
	
	var menuEntryFound = true;
	
	switch(argument0){
		case MENU_MAIN_NEW_GAME:{
			scr_delete_file(SCREENSHOT_FOLDER, SCREENSHOT_TMP);
			scr_unpause_game();
			menuPosition = 0;
			room_goto(Chapter1);
			break;
		}
		case MENU_MAIN_LOAD: {
			with instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_load) do {
				menu_parent = o_menu_main;
			}			
			break;
		}
		case MENU_MAIN_QUIT: {
			with instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_modal_base) do {				
				menu_parent = o_menu_main;
				modal_action = scr_quit_game;
			}
			break;
		}		
		case MENU_MAIN_DEBUG1:{
			with instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_debug_chapter_select) do {
				menu_parent = o_menu_main;
			}
			break;
		}
		case MENU_MAIN_DEBUG2:{
			with instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_debug_mission_chapter_select) do {
				menu_parent = o_menu_main;
			}
			break;
		}		
		default: {
			menuEntryFound = false;
			break;
		}
	}
	if(menuEntryFound) {
		instance_destroy(self);
	} else {
		show_debug_message("Can't find value in #macro (scr_execute_menu_command) value (" + string(argument0) + ")");	
	}