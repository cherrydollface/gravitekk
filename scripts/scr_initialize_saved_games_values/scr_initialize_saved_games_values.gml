//for(var i = 0; i < array_length_1d(global.menuElements); i++){
for(var i = 0; i < SLOTS_FOR_SAVES; i++){
	
	//if (global.gameState == STATE_LOAD ||  global.gameState == STATE_MENU_OPTIONS){
		global.temporarySaveSlotsImage[i] = scr_load_screenshot(i);
		//show_debug_message(">>>> " + string(global.temporarySaveSlotsImage[i]))
		//show_debug_message("Saveslot: " + string(i) + "added: " + string(global.temporarySaveSlotsImage[i]))
		//draw_sprite_stretched(sprite, i, x + SPACE_BETWEEN_POSITIONS, y + (i * SPACE_BETWEEN_POSITIONS), 42, 32);
	//} else {
   // draw_text(MENU_X_POSITION + interval, MENU_Y_POSITION + (i * interval), string(global.menuElements[i]))
	//}
}