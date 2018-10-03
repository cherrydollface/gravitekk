///Make temporary screenshot when user called pause menu
if (file_exists(SCREENSHOT_FOLDER + SCREENSHOT_TMP)){
	scr_delete_file(SCREENSHOT_FOLDER, SCREENSHOT_TMP);
}
screen_save(SCREENSHOT_FOLDER + SCREENSHOT_TMP);