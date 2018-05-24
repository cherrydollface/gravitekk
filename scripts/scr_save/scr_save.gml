// Save
// Game instance

if (CURRENT_SAVE_SLOT = "None") CURRENT_SAVE_SLOT = 0;
current_file_txt_pattern = "Save {x}.txt";
current_file_sav_pattern = "Save {x}.dat";

var current_save_file_txt = string_replace(current_file_txt_pattern, "{x}", string(CURRENT_SAVE_SLOT));
var current_save_file_dat = string_replace(current_file_sav_pattern, "{x}", string(CURRENT_SAVE_SLOT));

global.gameState = STATE_PAUSE;

game_save(current_save_file_dat);

ini_open(current_save_file_txt);

//ini_open("Saved Titles");
ini_write_string("Room section", "index", string(room));
ini_write_string("Save time", "time", " " + string(current_hour) + ":" + string(current_minute) + " " + string(current_day) + "/" + string (current_month) + "/" + string(current_year) + ".");

ini_write_string("Changed string", "name", "1");

ini_close();
