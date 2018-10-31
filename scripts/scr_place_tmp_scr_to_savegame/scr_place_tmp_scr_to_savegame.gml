///Rename tmp screenshot to the number of savegame
var screenshot = scr_string_replace(SCREENSHOT_CLEAR, argument0);
var notNamedTmpCopy = "tmp.png"; 
if (file_exists(SCREENSHOT_FOLDER + SCREENSHOT_TMP))
{
	if (file_exists(SCREENSHOT_FOLDER + screenshot)){
		scr_delete_file(SCREENSHOT_FOLDER, screenshot);
	}
	file_copy(SCREENSHOT_FOLDER + SCREENSHOT_TMP, SCREENSHOT_FOLDER + notNamedTmpCopy);
	file_rename(SCREENSHOT_FOLDER + notNamedTmpCopy, SCREENSHOT_FOLDER + screenshot);
} else {
	show_debug_message("ERROR, can't find temporary screenshot.");
 }