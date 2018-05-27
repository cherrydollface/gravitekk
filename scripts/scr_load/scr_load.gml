// Load
/// Text pattern
var current_load_slot = argument0;

/// Build path to the .dat and .ini files
var current_save_file = scr_string_replace("Save {}", current_load_slot)
var csf_dat = current_save_file + ".dat"
var csf_txt = current_save_file + ".txt"

/// Initializing current map tiles
room_goto(scr_read_value_from_file(csf_txt, "Room section", "index"))

/// Load location of the object and global variables
// Disabled before i find normal way to save game
//game_load(csf_dat)

/// Entering pause status for prevent game collision of the saved global pause state
scr_pause_game()