if(!interceptKeyboard) return 0;

if((keyboard_check_pressed(vk_escape) || mouse_check_button_pressed(mb_middle)) /*& (global.activeMenu != MENU_MAIN) & (global.activeMenu != MENU_MAIN_LOAD) & (global.activeMenu != MENU_MAIN_OPTION)*/){
	if(global.gamestate == STATE_PAUSE) {
		global.gamestate = STATE_GAME;
		instance_destroy(self);
	}
}

///Cursor listener
if (cursorStatus == CURSOR_ENABLED){
	// Change postion
	var cursorMoved = 0; //Stop cursor in next iteration
	cursorMoved -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
	cursorMoved += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

	// Reach maximum or minimum position value
	if(cursorMoved != 0){ // If cursor moved do he reached
	    menuPosition += cursorMoved;
	    if(menuPosition < 0){ //minimal value
			menuPosition = array_length_1d(menuElements) - 1;
			}
	    if(menuPosition > array_length_1d(menuElements) - 1){ // maximal value
			menuPosition = 0;
			}
		show_debug_message(menuPosition);
	}
	
	// Listener for confirm selected activation by "Enter", "Shift" or "Space" buttons
	var push = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_shift), keyboard_check_pressed(vk_space), 0);
	if(push == 1){
/*
		if(activeMenu == MENU_MAIN || activeMenu == MENU_PAUSE || activeMenu == MENU_PAUSE_OPTION || activeMenu == MENU_MAIN_OPTION){
			scr_execute_menu_command(scr_interprete_menu_string(menuElements[menuPosition]));
		} else {
*/		
			script_execute(menu_interpretator, menuPosition);
	}	
}

if(activeMenu == STATE_GAME){
	cursorStatus = CURSOR_DISABLED;
}


