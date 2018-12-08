/// @description Insert description here
// You can write your code in this editor


if(gamepad_button_check_pressed(global.gamePadIndex, gp_start) /*& (global.activeMenu != MENU_MAIN) & (global.activeMenu != MENU_MAIN_LOAD) & (global.activeMenu != MENU_MAIN_OPTION)*/){
	if(global.gamestate == STATE_PAUSE) {
		global.gamestate = STATE_GAME;
		instance_destroy(self);
	}
}

///Cursor listener
if (cursorStatus == CURSOR_ENABLED){
	// Change postion
	var cursorMoved = 0; //Stop cursor in next iteration
	cursorMoved -= gamepad_button_check_pressed(global.gamePadIndex, gp_padu)
	cursorMoved += gamepad_button_check_pressed(global.gamePadIndex, gp_padd)

	// Reach maximum or minimum position value
	if(cursorMoved != 0){ // If cursor moved do he reached
	    menuPosition += cursorMoved;
	    if(menuPosition < 0){ //minimal value
			menuPosition = array_length_1d(menuElements) - 1;
			}
	    if(menuPosition > array_length_1d(menuElements) - 1){ // maximal value
			menuPosition = 0;
			}
		show_debug_message(menuPosition);
	}
	

	var push = max(scr_gamepad_any_button_pressed(), keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_shift), keyboard_check_pressed(vk_space), 0);
	if(push == 1){
		script_execute(menu_interpretator, menuPosition);
	}	
}

if(activeMenu == STATE_GAME){
	cursorStatus = CURSOR_DISABLED;
}



blinkAlpha = 0.7 + 0.3 * sin(current_time * 0.005);

if(mouse_x != oldmouseX || mouse_y != oldmouseY) {
	mouseInput = true;
	oldmouseX = mouse_x;
	oldmouseY = mouse_y;
} 


if (!mouseInput) return 0;

var nunPositions = array_length_1d(menuElements);
		var xPos = scr_get_menu_x_positions();
		var yPos = scr_get_menu_y_positions(nunPositions);

for(var i = 0; i < nunPositions; i++) {
		if(point_in_rectangle(mouse_x, mouse_y, xPos[0] + drawPositionOffsetX , (yPos[i * 2] + drawPositionOffsetY), xPos[1] + drawPositionOffsetX, (yPos[1 + i * 2] + drawPositionOffsetY))){
				menuPosition = i;
				if(mouse_check_button_pressed(mb_left)){;
				script_execute(menu_interpretator, menuPosition);
	    }}
}
