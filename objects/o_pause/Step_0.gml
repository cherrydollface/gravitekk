// Listener for pause button

// Prevent open pause menu on the main menu
if(keyboard_check_pressed(vk_escape) & (global.gameState != STATE_MENU) & (global.gameState != STATE_MENU_LOAD)){
    if(global.gameState == STATE_PAUSE){
        scr_unpause_game();
       } else {
        scr_pause_game();
    }
}

if((keyboard_check_pressed(vk_escape) & (global.gameState != STATE_MENU) & (global.gameState == STATE_MENU_LOAD))){
    global.gameState = STATE_MENU;
}

////////////////////This is the test screen function//////////////////////////////
num = 1                                                                         //
if keyboard_check_pressed(ord("S"))                                             //
   {                                                                            //
   screen_save(working_directory + "\Screens\Screen_" + string(num)+".png")     //
   num += 1;                                                                    //
   }                                                                            //
                                                                                //
if keyboard_check_pressed(ord("P"))                                             //
   {                                                                            //
   show_debug_message("GM:")                                                    //
   show_debug_message(global.gameState)                                         //
   }                                                                            //
//////////////////////////////////////////////////////////////////////////////////

// Pause
if(global.gameState == STATE_PAUSE){
	//Create rectangle x and y start positions [n] and y final position [n + 1]
	var xPos = scr_get_menu_x_positions();
	var yPos = scr_get_menu_y_positions(PAUSE_MENU_POSITIONS_LIMIT) 
	
	if(point_in_rectangle(mouse_x, mouse_y, xPos[0], (yPos[0]), xPos[1], (yPos[1]))){
            if(mouse_check_button_pressed (mb_left)){
            scr_unpause_game();
            }} // Resume
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[2], xPos[1], yPos[3])){
            if(mouse_check_button_pressed (mb_left)){
            global.playerInput = PLAYER_INPUT_DISABLED;
            global.gameState = STATE_SAVE;
            }} // Save
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[4], xPos[1], yPos[5])){
            if(mouse_check_button_pressed (mb_left)){
            global.playerInput = PLAYER_INPUT_DISABLED;
            global.gameState = STATE_LOAD;
            }} // Load
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[6], xPos[1], yPos[7])){
            if(mouse_check_button_pressed (mb_left)){
            }} // Option 
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[8], xPos[1], yPos[9])){
            if(mouse_check_button_pressed (mb_left)){
            game_end();
            }} // Quit
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[10], xPos[1], yPos[11])){
            if(mouse_check_button_pressed (mb_left)){
				show_debug_message("Test");
            scr_test();
            }} //This is the test BUTTON!  
}
            
// Save
if ((global.gameState == STATE_SAVE) & (global.playerInput == PLAYER_INPUT_ENABLED)){
	var xPos = scr_get_menu_x_positions();
	var yPos = scr_get_menu_y_positions(SLOTS_FOR_SAVES);
	
	if(point_in_rectangle(mouse_x, mouse_y, xPos[0], (yPos[0]), xPos[1], (yPos[1]))){
            if(mouse_check_button_pressed (mb_left)){
            scr_save(0);
            }}
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[2], xPos[1], yPos[3])){
            if(mouse_check_button_pressed (mb_left)){
            scr_save(1);
            }}
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[4], xPos[1], yPos[5])){
            if(mouse_check_button_pressed (mb_left)){
            scr_save(2);
            }}
	 else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[6], xPos[1], yPos[7])){
            if(mouse_check_button_pressed (mb_left)){
            scr_save(3);
            }}  
}   

// Load
if (((global.gameState == STATE_LOAD) || (global.gameState == STATE_MENU_LOAD)) & (global.playerInput == PLAYER_INPUT_ENABLED)){
	var xPos = scr_get_menu_x_positions();
	var yPos = scr_get_menu_y_positions(SLOTS_FOR_SAVES);
		
	if(point_in_rectangle(mouse_x, mouse_y, xPos[0], (yPos[0]), xPos[1], (yPos[1]))){
            if(mouse_check_button_pressed (mb_left))
            {
            scr_load(0);
            }}
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[2], xPos[1], yPos[3])){
            if(mouse_check_button_pressed (mb_left))
            {
            scr_load(1);
            }}
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[4], xPos[1], yPos[5])){
            if(mouse_check_button_pressed (mb_left))
            {
            scr_load(2);
            }}
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[6], xPos[1], yPos[7])){
            if(mouse_check_button_pressed (mb_left))
            {
            scr_load(3);
            }}
			}
            
// Main menu    
if (global.gameState == STATE_MENU){
	var xPos = scr_get_menu_x_positions();
	var yPos = scr_get_menu_y_positions(PAUSE_MENU_POSITIONS_LIMIT);

	if(point_in_rectangle(mouse_x, mouse_y, xPos[0], (yPos[0]), xPos[1], (yPos[1]))){
            if(mouse_check_button_pressed (mb_left)){
            global.gameState = STATE_GAME;
            room_goto(mission1);
            }} // Start game
   else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[2], xPos[1], yPos[3])){
            if(mouse_check_button_pressed (mb_left)){
                global.playerInput = PLAYER_INPUT_DISABLED;
                global.gameState = STATE_MENU_LOAD;
            }} // Load
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[4], xPos[1], yPos[5])){
            if(mouse_check_button_pressed (mb_left)){
            }} // About
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[6], xPos[1], yPos[7])){
            if(mouse_check_button_pressed (mb_left)){
            }} // Option
	else if(point_in_rectangle(mouse_x, mouse_y, xPos[0], yPos[8], xPos[1], yPos[9])){
            if(mouse_check_button_pressed (mb_left)){
            game_end()
            }} // Quit
}
