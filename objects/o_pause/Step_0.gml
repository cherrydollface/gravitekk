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
   
   
// Menu positions
//var touple;
//for(var value = 0; value < )

   
// Pause
if(global.gameState == STATE_PAUSE){
    var xPostition = MENU_X_POSITION + SPACE_BETWEEN_POSITIONS;
    var xMaxRangePosition = xPostition + CELLSIZE * 6;
    var i = 0, y_pos = MENU_Y_POSITION;
    var shift = 32;
         if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (0 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (1 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left)){
            scr_unpause_game();
            }} // Resume
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (1 * SPACE_BETWEEN_POSITIONS)
     - shift, xMaxRangePosition, y_pos + (2 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left)){
            global.playerInput = PLAYER_INPUT_DISABLED;
            global.gameState = STATE_SAVE;
            }} // Save
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (2 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (3 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left)){
            global.playerInput = PLAYER_INPUT_DISABLED;
            global.gameState = STATE_LOAD;
            }} // Load
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (3 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (4 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left)){
            }} // Option
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (4 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (5 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left)){
            game_end()
            }} // Quit
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (5 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (6 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left)){
            scr_test();
            }} //This is the test BUTTON!  
}
            
// Save


if ((global.gameState == STATE_SAVE) & (global.playerInput == PLAYER_INPUT_ENABLED)){
    var xPostition = MENU_X_POSITION + SPACE_BETWEEN_POSITIONS;
    var xMaxRangePosition = xPostition + CELLSIZE * 6;
    var i = 0, y_pos = MENU_Y_POSITION;
    var shift = 32;
         if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (0 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (1 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left))
            {
            CURRENT_SAVE_SLOT = "0"
            scr_save();
            }}
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (1 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (2 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left))
            {
            CURRENT_SAVE_SLOT = "1"
            scr_save();
            }}
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (2 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (3 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left))
            {
            CURRENT_SAVE_SLOT = "2"
            scr_save();
            }}
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (3 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (4 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left))
            {
            CURRENT_SAVE_SLOT = "3"
            scr_save();
            }}  
}   

// Load

if (((global.gameState == STATE_LOAD) || (global.gameState == STATE_MENU_LOAD)) & (global.playerInput == PLAYER_INPUT_ENABLED)){
    var xPostition = MENU_X_POSITION + SPACE_BETWEEN_POSITIONS;
    var xMaxRangePosition = xPostition + CELLSIZE * 6;
    var i = 0, y_pos = MENU_Y_POSITION;
    var shift = 32;
         if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (0 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (1 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left))
            {
            CURRENT_SAVE_SLOT = "0"
            scr_load();
            global.gameState = STATE_PAUSE;
            }}
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (1 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (2 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left))
            {
            CURRENT_SAVE_SLOT = "1"
            scr_load();
            global.gameState = STATE_PAUSE;
            }}
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (2 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (3 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left))
            {
            CURRENT_SAVE_SLOT = "2"
            scr_load();
            global.gameState = STATE_PAUSE;
            }}
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (3 * SPACE_BETWEEN_POSITIONS)
         - shift, xMaxRangePosition, y_pos + (4 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left))
            {
            CURRENT_SAVE_SLOT = "3"
            scr_load();
            global.gameState = STATE_PAUSE;
            }}}
            
// Main menu
            
if (global.gameState == STATE_MENU){
    var xPostition = MENU_X_POSITION + SPACE_BETWEEN_POSITIONS;
    var xMaxRangePosition = xPostition + CELLSIZE * 6;
    var i = 0, y_pos = MENU_Y_POSITION;
    var shift = 32;
            if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (0 * SPACE_BETWEEN_POSITIONS)
            - shift, xMaxRangePosition, y_pos + (1 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left)){
            global.gameState = STATE_GAME;
            room_goto_next();
            }} // Start game
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (1 * SPACE_BETWEEN_POSITIONS)
            - shift, xMaxRangePosition, y_pos + (2 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left)){
                global.playerInput = PLAYER_INPUT_DISABLED;
                //global.gameState = STATE_LOAD;
                global.gameState = STATE_MENU_LOAD;
            }} // Load
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (2 * SPACE_BETWEEN_POSITIONS)
            - shift, xMaxRangePosition, y_pos + (3 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left)){
            global.gameState = STATE_GAME;
            }} // About
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (3 * SPACE_BETWEEN_POSITIONS)
            - shift, xMaxRangePosition, y_pos + (4 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left)){
            global.gameState = STATE_GAME;
            }} // Option
    else if(point_in_rectangle(mouse_x, mouse_y, xPostition, y_pos + (4 * SPACE_BETWEEN_POSITIONS)
            - shift, xMaxRangePosition, y_pos + (5 * SPACE_BETWEEN_POSITIONS) - shift)){
            if(mouse_check_button_pressed (mb_left)){
            game_end()
            }} // Quit
}
