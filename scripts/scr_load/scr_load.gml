// Load
/// Text pattern
var current_load_slot = argument0;

/// Build path to the .dat and .ini files
//	show_debug_message("State menu load changed to the stare load")

var current_save_file = scr_string_replace("Save {}", current_load_slot)
var csf_dat = current_save_file + ".dat"
var csf_txt = current_save_file + ".txt"

/// Initializing current map tiles
if(global.activeMenu == MENU_MAIN_LOAD){
	room_goto(scr_read_value_from_file(csf_txt, "Room section", "index"));
}
game_load(csf_dat);