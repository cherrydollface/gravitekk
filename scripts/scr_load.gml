// Load
// Game level
ini_open("Save.ini");
load_room_name = ini_read_string("Room section", "name", 0);
room_goto(asset_get_index(load_room_name));
ini_close();
// Game instance
game_load("Save.dat");
// Set pause instance // If skip instance game will drop error
scr_pause_game();
