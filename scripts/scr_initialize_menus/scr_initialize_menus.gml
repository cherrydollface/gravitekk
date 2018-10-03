
for ( var i = 0; i < SLOTS_FOR_SAVES; i++){
	requestedFile = scr_string_replace("Save {}.txt", i)
    
    if file_exists(requestedFile){ 
		nameAndDate = scr_read_values_from_file(requestedFile, "Room section", "name", "Save time", "time");
		
        //ini_close();
        global.savedGames[i] = nameAndDate;
    } 
    else { 
        global.savedGames[i] = "Free";
		}
}