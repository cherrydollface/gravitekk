///Load screenshot from program util folder SCREENSHOT_CLEAR
var screenshot = SCREENSHOT_FOLDER + scr_string_replace(SCREENSHOT_CLEAR, argument0);
show_debug_message("File: " + screenshot);
//show_debug_message("SCREENSHOT_FOLDER: " + SCREENSHOT_FOLDER);
//show_debug_message("Full: " + SCREENSHOT_FOLDER + screenshot);

if (file_exists(screenshot)){
//	show_debug_message("Exist");
	return sprite_add(screenshot, 1, 0, 0, 0, 0);
	//return sprite_save_load_placeholder;
} else {
//	show_debug_message("Not exist")
//	return 0;
	return sprite_save_load_placeholder;
}


//return sprite_add(SCREENSHOT_FOLDER + screenshot, 1, 0, 0, 0, 0);