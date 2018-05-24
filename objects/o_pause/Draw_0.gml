// If game is paused, draw menu
if (global.gameState == STATE_MENU){
            global.menuElements = global.mainMenuElements;
            scr_draw_menu_board();
            }

if (global.gameState == STATE_PAUSE){  
            scr_draw_cover_of_darkness();
            scr_draw_menu_board();
            global.menuElements = global.pauseMenuElements;
            }
            
if ((global.gameState == STATE_SAVE) || (global.gameState == STATE_LOAD) || (global.gameState == STATE_MENU_LOAD)){  
            scr_draw_cover_of_darkness();
            scr_draw_menu_board();
            scr_initialize_menus();
            global.menuElements = global.savedGames;
            // Enable player mouse input status for skip double screen activation.
            global.playerInput = PLAYER_INPUT_ENABLED;
            }