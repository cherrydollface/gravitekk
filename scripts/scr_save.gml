// Save
// Game instance
game_save("Save.dat"); 
// Game level
ini_open("Save.ini");
ini_write_string("Room section", "name", string(room_get_name(room)));
ini_close();
