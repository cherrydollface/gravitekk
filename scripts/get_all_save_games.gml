for (var j = 0; j < SLOTS_FOR_SAVEGAME; j++){
    if(file_exists(i + ".dat")){
    var name;
    var i, file;
    file = file_text_open_read(j + ".txt");
    for (i = 0; i < 15; i ++)
       {
       name[i] = file_text_read_string(file);
       file_text_readln(file);
       }
    file_text_close(file);
    global.save_games[i] = name;
    }
    else global.menuElements[i] = "Free";
}


