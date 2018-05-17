if(file_exists("Save.sav")){
    ini_open("Save.sav")
    var loadedRoom = ini_read_real("Save1", "room", Level_One);
   // global.points = ini_read_real("Save1", "points", 0);
    ini_close();
    room_goto(loadedRoom);
}
else{
    //do nothing
}
