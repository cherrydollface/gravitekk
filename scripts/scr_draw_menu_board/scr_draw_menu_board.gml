// Draw menu
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(pager_font);
draw_set_colour(c_white);

// Draw menu elements
var picsInterval = SPACE_BETWEEN_SAVED_PICS; //SPACE_BETWEEN_POSITIONS;
var interval = SPACE_BETWEEN_POSITIONS


for(var i = 0; i < array_length_1d(global.menuElements); i++){
	if (global.activeMenu == MENU_MAIN_LOAD || global.activeMenu == MENU_PAUSE_LOAD){			
		draw_sprite_stretched(global.temporarySaveSlotsImage[i], i, MENU_X_POSITION + (picsInterval) - 36, MENU_Y_POSITION + (i * (picsInterval)) - 36, 110, 82);
		draw_text((MENU_X_POSITION * 3) + interval, MENU_Y_POSITION + (i * picsInterval)+4, string(global.menuElements[i]));
	} else {
		draw_text(MENU_X_POSITION + interval, MENU_Y_POSITION + (i * interval), string(global.menuElements[i]))
	}
}