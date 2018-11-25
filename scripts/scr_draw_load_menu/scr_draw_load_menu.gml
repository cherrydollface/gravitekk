var internal = CELLSIZE;
var picsInterval = CELLSIZE * 3;
scr_draw_shadow_text(menuElements[menuPosition], picsInterval, MENU_Y_POSITION- CELLSIZE * 3, 1);

for(var i = 0; i < array_length_1d(temporarySaveSlotsImage); i++){
		draw_sprite_stretched(temporarySaveSlotsImage[i], i, MENU_X_POSITION, MENU_Y_POSITION + (i * (picsInterval)) - CELLSIZE * 3, 110, 82);
		
		if(i == menuPosition) {
			draw_set_alpha(blinkAlpha);
			draw_sprite(sprite_cursor_rectangle, 0, MENU_X_POSITION, MENU_Y_POSITION + (i * (picsInterval)) - CELLSIZE * 3);		
			draw_set_alpha(1);
		}
	
}