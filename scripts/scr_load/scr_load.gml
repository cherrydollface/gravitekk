// Load
/// Text pattern
var current_file_sav_pattern = "Save {x}"

/// Build path to the .dat and .ini files
var current_save_file = string_replace(current_file_sav_pattern, "{x}", string(CURRENT_SAVE_SLOT))
var csf_dat = current_save_file + ".dat"
var csf_txt = current_save_file + ".txt"

/// Open .ini file
ini_open(csf_txt)

/// Load location of the object and global variables
game_load(csf_dat)

/// Initializing current map titles
room_goto(ini_read_string("Room section" , "index" , "index"))

/// Entering safe status for prevent game collision of the saved global pause state
scr_pause_game()

/// Close .ini file
ini_close()