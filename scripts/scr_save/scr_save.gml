// Save game instance
current_save_slot = argument0;

var current_save_file_txt = scr_string_replace("Save {}.txt", current_save_slot);
var current_save_file_dat = scr_string_replace("Save {}.dat", current_save_slot);

global.activeMenu = MENU_PAUSE;

game_save(current_save_file_dat);

//ini_open("Saved Titles");
scr_write_values_to_file(current_save_file_txt, "Room section", "index", string(room), 
											"Save time", "time", scr_get_full_date());