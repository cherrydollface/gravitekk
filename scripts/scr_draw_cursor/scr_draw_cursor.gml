if(global.activeMenu == MENU_PAUSE_LOAD || global.activeMenu == MENU_MAIN_LOAD){
	//draw_sprite(sprite_cursor_rectangle, 0, global.cursorPosition[0, 0], global.cursorPosition[0, 1]);
	draw_sprite(sprite_cursor_rectangle, 0, MENU_X_POSITION + (SPACE_BETWEEN_POSITIONS) + 8, global.cursorPosition[0, 1] - 36);
	
} else {
	draw_sprite(sprite_arrow, 0, global.cursorPosition[0, 0], global.cursorPosition[0, 1]);
}






//var spr = sprite_add(working_directory + "\Screens\Screen_1.png", 1, 0, 0, 0, 0);
//sprite_index = spr;
//draw_sprite(sprite_index, 0, global.cursorPosition[0, 0], global.cursorPosition[0, 1]);

//draw_sprite_stretched(spr, image_index, 0, 0, 36, 36);