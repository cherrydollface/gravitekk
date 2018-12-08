
global.cursorStatus = CURSOR_ENABLED;
scr_draw_dimmier_cover();

// Draw menu

draw_set_font(message_font);
draw_set_colour(c_white);

// Draw menu elements
var picsInterval = SPACE_BETWEEN_SAVED_PICS; 
var interval = SPACE_BETWEEN_POSITIONS * 0.5;


for(var i = 0; i < array_length_1d(menuElements); i++){
		
		if(i == menuPosition) {
			draw_sprite_ext(sprite_arrow, 0, MENU_X_POSITION + drawPositionOffsetX + interval + 2 - CELLSIZE, MENU_Y_POSITION + drawPositionOffsetY + (i * interval) + 2, 0.5, 0.5, 0, c_white, 1);
		}
		var title = string(menuElements[i]);
		scr_draw_shadow_text(title, MENU_X_POSITION + drawPositionOffsetX + interval, MENU_Y_POSITION + drawPositionOffsetY + (i * interval), i == menuPosition ? blinkAlpha : 1);

}
