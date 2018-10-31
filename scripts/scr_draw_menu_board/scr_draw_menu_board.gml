// Draw menu

//draw_set_halign(fa_left);
//draw_set_valign(fa_middle);

draw_set_font(pager_font);
draw_set_colour(c_white);

// Draw menu elements
var picsInterval = SPACE_BETWEEN_SAVED_PICS; 
var interval = SPACE_BETWEEN_POSITIONS * 0.5;


for(var i = 0; i < array_length_1d(global.menuElements); i++){

	if (global.activeMenu == MENU_MAIN_LOAD || global.activeMenu == MENU_PAUSE_LOAD){			
		draw_sprite_stretched(global.temporarySaveSlotsImage[i], i, MENU_X_POSITION, MENU_Y_POSITION + (i * (picsInterval)) - CELLSIZE * 3, 110, 82);
		draw_text((MENU_X_POSITION * 3) + interval, MENU_Y_POSITION + (i * picsInterval)+4, string(global.menuElements[i]));
		if(i == global.menuPosition) {
			draw_set_alpha(blinkAlpha);
			draw_sprite(sprite_cursor_rectangle, 0, MENU_X_POSITION, MENU_Y_POSITION + (i * (picsInterval)) - CELLSIZE * 3);		
			draw_set_alpha(1);
		}
	} else {
		if(i == global.menuPosition) {
			draw_sprite_ext(sprite_arrow, 0, MENU_X_POSITION + interval + 2 - CELLSIZE, MENU_Y_POSITION + (i * interval) + 2, 0.5, 0.5, 0, c_white, 1);
		}		
		draw_set_color(c_black);
		draw_text(MENU_X_POSITION + interval + 2, MENU_Y_POSITION + (i * interval) + 2, string(global.menuElements[i]))
		draw_set_color(c_white);
		if (i == global.menuPosition) draw_set_alpha(blinkAlpha);
		draw_text(MENU_X_POSITION + interval, MENU_Y_POSITION + (i * interval), string(global.menuElements[i]))
		draw_set_alpha(1);
	}
}