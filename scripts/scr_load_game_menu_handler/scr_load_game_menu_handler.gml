	var menuEntryFound = true;

	switch(argument0){
		default:  {
			break;
		}
	}
	
	if(menuEntryFound) {
		instance_destroy(self);
	} else {
		show_debug_message("Can't find value in #macro (scr_execute_menu_command) value (" + string(argument0) + ")");	
	}