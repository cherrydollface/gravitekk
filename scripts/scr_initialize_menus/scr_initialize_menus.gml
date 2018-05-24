
for ( var i = 0; i < SLOTS_FOR_SAVEGAME; i ++){
    str = "Save {i}.txt" // Basic filename of savegame
    requestedFile = string_replace(str, "{i}", string(i)); // Formatted file
    
    if file_exists(requestedFile){ 
        var name, file, j = 0;
        ini_open(requestedFile);
        name = ini_read_string( "Room section", "name", "room = " ) + ini_read_string( "Save time", "time", " " );
        
        ini_close();
        global.savedGames[i] = name;
    } 
    else { 
        global.savedGames[i] = "Free";}
}