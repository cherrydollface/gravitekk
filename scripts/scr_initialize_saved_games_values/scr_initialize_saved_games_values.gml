for(var i = 0; i < SLOTS_FOR_SAVES; i++){
	temporarySaveSlotsImage[i] = scr_load_screenshot(i);
	if(temporarySaveSlotsImage[i] != sprite_save_load_placeholder) {
		menuElements[i] = get_localized_string("Empty save slot")
	} else {
		menuElements[i] = "Placeholder" // todo: actual save date
	}	
}