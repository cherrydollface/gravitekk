/// @description Insert description here
// You can write your code in this editor
blinkAlpha = 0.5 + 0.5 * sin(current_time * 0.005);



if (menuIsActive == true){
// Main menu    

	if (activeMenu == MENU_MAIN){
		var xPos = scr_get_menu_x_positions();
		var yPos = scr_get_menu_y_positions(PAUSE_MENU_POSITIONS_LIMIT);

		if(point_in_rectangle(mouse_x, mouse_y, xPos[0], (yPos[0]), xPos[1], (yPos[1]))){
				menuPosition = 0;
				if(mouse_check_button_pressed (mb_left)){;
				scr_execute_menu_command(MENU_MAIN_START);
	    }} // Start game
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[2], xPos[1], yPos[3])){
				menuPosition = 1;
	            if(mouse_check_button_pressed (mb_left)){
					scr_execute_menu_command(MENU_MAIN_LOAD);
	            }} // Load
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[4], xPos[1], yPos[5])){
				menuPosition = 2;
	            if(mouse_check_button_pressed (mb_left)){
					playerInput = PLAYER_INPUT_DISABLED;
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
	if(activeMenu == MENU_PAUSE){
		//Create rectangle x and y start positions [n] and y final position [n + 1]
		var xPos = scr_get_menu_x_positions();
		var yPos = scr_get_menu_y_positions(PAUSE_MENU_POSITIONS_LIMIT);
	
		if(point_in_rectangle(mouse_x, mouse_y, xPos[0], (yPos[0]), xPos[1], (yPos[1]))){
					menuPosition = 0;
		            if(mouse_check_button_pressed (mb_left)){
					scr_execute_menu_command(MENU_PAUSE_RESUME);
	            }} // Resume
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[2], xPos[1], yPos[3])){
					menuPosition = 1;
		            if(mouse_check_button_pressed (mb_left)){
		            playerInput = PLAYER_INPUT_DISABLED;
					scr_execute_menu_command(MENU_PAUSE_SAVE);
	            }} // Save
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[4], xPos[1], yPos[5])){
					menuPosition = 2;
		            if(mouse_check_button_pressed (mb_left)){
		            playerInput = PLAYER_INPUT_DISABLED;
					scr_execute_menu_command(MENU_PAUSE_LOAD);
	            }} // Load
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[6], xPos[1], yPos[7])){
					menuPosition = 3;
		            if(mouse_check_button_pressed (mb_left)){
					playerInput = PLAYER_INPUT_DISABLED;
					scr_execute_menu_command(MENU_PAUSE_OPTION);
	            }} // Option 
		else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[8], xPos[1], yPos[9])){
					menuPosition = 4;
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
	if ((activeMenu == MENU_PAUSE_SAVE) & (playerInput == PLAYER_INPUT_ENABLED)){
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
	if (((activeMenu == MENU_PAUSE_LOAD) || (activeMenu == MENU_MAIN_LOAD)) & (playerInput == PLAYER_INPUT_ENABLED)){
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
	}
}
