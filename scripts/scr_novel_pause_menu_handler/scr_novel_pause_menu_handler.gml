	var xPos = scr_get_menu_x_positions();
	var yPos = scr_get_menu_y_positions(PAUSE_MENU_POSITIONS_LIMIT);
	
	var menuEntryFound = true;

	switch(argument0){
		case MENU_PAUSE_RESUME:{
			scr_unpause_game();
			break;
		}
		case MENU_PAUSE_LOAD: {
			with instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_load) do {
				menu_parent = o_menu_main_novel;
			}			
			break;
		}
		case MENU_PAUSE_QUIT_GAME:{
			with instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_modal_base) do {				
				menu_parent = o_menu_main_novel;
				modal_action = scr_quit_game;
			}
			break;
		}		
		case MENU_PAUSE_QUIT_TO_MAIN_MENU: {
			with instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_modal_base) do {				
				menu_parent = o_menu_main_novel;
				modal_action = scr_quit_to_title;
			}
			break;
		}
		case MENU_PAUSE_RESTART: {
			with instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_modal_base) do {				
				menu_parent = o_menu_main_novel;
				modal_action = scr_skip_to_mission;
			}
			break;
		}		
		case MENU_PAUSE_DEBUG1:{
            //scr_test();
			with instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_debug_chapter_select) do {
				menu_parent = o_menu_main_novel;
			}
			break;
		}
		case MENU_PAUSE_DEBUG2:{
			with instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_debug_mission_chapter_select) do {
				menu_parent = o_menu_main_novel;
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