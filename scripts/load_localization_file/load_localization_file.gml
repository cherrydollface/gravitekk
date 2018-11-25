var uiEntriesFile = scr_read_json_file(working_directory + "\\WordingLocalization\\" + argument0);
var uiEntriesRoot = json_decode(uiEntriesFile);
ui_lang_map = ds_map_find_value(uiEntriesRoot, UI_LANGUAGE);
