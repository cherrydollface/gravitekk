var dialogEntriesFile = scr_read_json_file(working_directory + "\\WordingLocalization\\" + argument0);
var dialogEntriesRoot = json_decode(dialogEntriesFile);
ui_dialog_map = ds_map_find_value(dialogEntriesRoot, UI_LANGUAGE);
