/// @description Insert description here
// You can write your code in this editor

if((keyboard_check_pressed(vk_escape) || mouse_check_button_pressed(mb_middle)) /*& (global.activeMenu != MENU_MAIN) & (global.activeMenu != MENU_MAIN_LOAD) & (global.activeMenu != MENU_MAIN_OPTION)*/){
	if(activeMenu == MENU_PAUSE){
		scr_execute_menu_command(MENU_PAUSE_RESUME);
		menuIsActive = false;
	 } else {
		scr_make_tmp_screenshot();
        scr_pause_game();
		menuIsActive = true;
		scr_draw_cover_of_darkness();
    }
}


if(keyboard_check_pressed(ord("P"))){
	game_save("Save 20.dat");
}
if(keyboard_check_pressed(ord("O"))){
	game_load("Save 20.dat");
}
if(keyboard_check_pressed(ord("K"))){
	show_debug_message(activeMenu);
}
if(keyboard_check_pressed(ord("M"))){
	show_debug_message(activeMenu);
}
if(keyboard_check_pressed(ord("N"))){
	global.gamestate = STATE_PAUSE;
}
if(keyboard_check_pressed(ord("B"))){
	global.gamestate = STATE_GAME;
}

if(keyboard_check_pressed(vk_escape) & (activeMenu != MENU_MAIN) & ((activeMenu == MENU_MAIN_LOAD) || (activeMenu == MENU_PAUSE_LOAD))){
    activeMenu = MENU_MAIN;
}
if(keyboard_check_pressed(vk_escape) & (activeMenu == MENU_MAIN_OPTION)){
    activeMenu = MENU_MAIN;
}

/*
if (menuIsActive == true){
// Main menu    
	if (global.activeMenu == MENU_MAIN){
		var xPos = scr_get_menu_x_positions();
		var yPos = scr_get_menu_y_positions(PAUSE_MENU_POSITIONS_LIMIT);

		if(point_in_rectangle(mouse_x, mouse_y, xPos[0], (yPos[0]), xPos[1], (yPos[1]))){
	            if(mouse_check_button_pressed (mb_left)){;
				scr_execute_menu_command(MENU_MAIN_START);
	            }} // Start game
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[2], xPos[1], yPos[3])){
	            if(mouse_check_button_pressed (mb_left)){
					scr_execute_menu_command(MENU_MAIN_LOAD);
	            }} // Load
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[4], xPos[1], yPos[5])){
	            if(mouse_check_button_pressed (mb_left)){
					global.playerInput = PLAYER_INPUT_DISABLED;
					scr_execute_menu_command(MENU_MAIN_OPTION);
	            }} // Options
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[6], xPos[1], yPos[7])){
	            if(mouse_check_button_pressed (mb_left)){
					//scr_execute_menu_command(MENU_PAUSE_ABOUT);
	            }} // About
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[8], xPos[1], yPos[9])){
	            if(mouse_check_button_pressed (mb_left)){
				scr_execute_menu_command(MENU_MAIN_QUIT);
	            }} // Quit
	}
	// Pause
	if(global.activeMenu == MENU_PAUSE){
		//Create rectangle x and y start positions [n] and y final position [n + 1]
		var xPos = scr_get_menu_x_positions();
		var yPos = scr_get_menu_y_positions(PAUSE_MENU_POSITIONS_LIMIT);
	
		if(point_in_rectangle(mouse_x, mouse_y, xPos[0], (yPos[0]), xPos[1], (yPos[1]))){
		            if(mouse_check_button_pressed (mb_left)){
					scr_execute_menu_command(MENU_PAUSE_RESUME);
	            }} // Resume
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[2], xPos[1], yPos[3])){
		            if(mouse_check_button_pressed (mb_left)){
		            global.playerInput = PLAYER_INPUT_DISABLED;
					scr_execute_menu_command(MENU_PAUSE_SAVE);
	            }} // Save
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[4], xPos[1], yPos[5])){
		            if(mouse_check_button_pressed (mb_left)){
		            global.playerInput = PLAYER_INPUT_DISABLED;
					scr_execute_menu_command(MENU_PAUSE_LOAD);
	            }} // Load
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[6], xPos[1], yPos[7])){
		            if(mouse_check_button_pressed (mb_left)){
					global.playerInput = PLAYER_INPUT_DISABLED;
					scr_execute_menu_command(MENU_PAUSE_OPTION);
	            }} // Option 
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[8], xPos[1], yPos[9])){
		            if(mouse_check_button_pressed (mb_left)){
					scr_execute_menu_command(MENU_PAUSE_QUIT);
	            }
				} // Quit
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[10], xPos[1], yPos[11])){
	            if(mouse_check_button_pressed (mb_left)){
	            scr_test();
	            }} //This is a test BUTTON!  
	}
            
	// Save
	if ((global.activeMenu == MENU_PAUSE_SAVE) & (global.playerInput == PLAYER_INPUT_ENABLED)){
		var xPos = scr_get_menu_x_positions();
		var yPos = scr_get_menu_y_positions(SLOTS_FOR_SAVES);
	
		if(point_in_rectangle(mouse_x, mouse_y, xPos[0], (yPos[0]), xPos[1], (yPos[1]))){
	            if(mouse_check_button_pressed (mb_left)){
	            scr_execute_menu_command(0);
	            }}
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[2], xPos[1], yPos[3])){
	            if(mouse_check_button_pressed (mb_left)){
	            scr_execute_menu_command(1);
	            }}
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[4], xPos[1], yPos[5])){
	            if(mouse_check_button_pressed (mb_left)){
	            scr_execute_menu_command(2);
	            }}
		 else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[6], xPos[1], yPos[7])){
	            if(mouse_check_button_pressed (mb_left)){
	            scr_execute_menu_command(3);
	            }}  
	}   

	// Load
	if (((global.activeMenu == MENU_PAUSE_LOAD) || (global.activeMenu == MENU_MAIN_LOAD)) & (global.playerInput == PLAYER_INPUT_ENABLED)){
		var xPos = scr_get_menu_x_positions();
		var yPos = scr_get_menu_y_positions(SLOTS_FOR_SAVES);
		
		if(point_in_rectangle(mouse_x, mouse_y, xPos[0], (yPos[0]), xPos[1], (yPos[1]))){
	            if(mouse_check_button_pressed (mb_left))
	            {
	            scr_execute_menu_command(0);
	            }
			}
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[2], xPos[1], yPos[3])){
	            if(mouse_check_button_pressed (mb_left))
	            {
	            scr_execute_menu_command(1);
	            }
			}
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[4], xPos[1], yPos[5])){
	            if(mouse_check_button_pressed (mb_left))
	            {
	            scr_execute_menu_command(2);
	            }
			}
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[6], xPos[1], yPos[7])){
	            if(mouse_check_button_pressed (mb_left))
	            {
	            scr_execute_menu_command(3);
	            }
			}
}*/


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
		if(activeMenu == MENU_MAIN || activeMenu == MENU_PAUSE || activeMenu == MENU_PAUSE_OPTION || activeMenu == MENU_MAIN_OPTION){
			scr_execute_menu_command(scr_interprete_menu_string(menuElements[menuPosition]));
		} else {
			scr_execute_menu_command(menuPosition);
		}
	}
}

if(activeMenu == STATE_GAME){
	cursorStatus = CURSOR_DISABLED;
}


