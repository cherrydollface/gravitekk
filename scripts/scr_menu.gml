// Menu commands
switch(menuPosition){
    case 0 : {   //Start Game
        room_goto_next();
        break;
    }
    case 1 :{    // Load
        scr_load();
        break;
    }
    case 2 :{    // Options
        break;
    }
    case 3 :{    // About
        break;
    }
    case 4 :{    // Quit
        game_end();
        break;
    }
    default: break;
}

menu[0] = "Start"; 
menu[1] = "Load";
menu[2] = "Option";
menu[3] = "About";
menu[4] = "Quit";
