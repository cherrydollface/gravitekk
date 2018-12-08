	var xPos = scr_get_menu_x_positions();
	var yPos = scr_get_menu_y_positions(PAUSE_MENU_POSITIONS_LIMIT);
	
	var menuEntryFound = true;
	
	switch(argument0){
		case 0: {
			room_goto(Bootcamp1);
			break;
		}		
		case 1: {
			room_goto(Hangars);
			break;
		}
		case 2: {
			room_goto(Area51);
			break;
		}
		case 3: {
			room_goto(City);
			break;
		}	
		case 4: {
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