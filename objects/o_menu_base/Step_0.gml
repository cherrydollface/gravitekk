/// @description Insert description here
// You can write your code in this editor
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
		if(point_in_rectangle(mouse_x, mouse_y, xPos[0], (yPos[i * 2]), xPos[1], (yPos[1 + i * 2]))){
				menuPosition = i;
				if(mouse_check_button_pressed(mb_left)){;
				script_execute(menu_interpretator, menuPosition);
	    }}
}