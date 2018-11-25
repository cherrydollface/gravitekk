// Create array of y positions for rectangle
var number_of_positions = argument0;
var y_pos = MENU_Y_POSITION;

var xPostition = MENU_X_POSITION + SPACE_BETWEEN_POSITIONS * 0.5;
var xMaxRangePosition = xPostition + CELLSIZE * 6;
	
var positions = 0;

for(i = 0; i < number_of_positions ; i ++){
		// First y position
		positions[i * 2] = y_pos + (i * SPACE_BETWEEN_POSITIONS * 0.5) - CELLSIZE;
		// Last y position
		positions[(i * 2) + 1] = y_pos + ((i + 1) * SPACE_BETWEEN_POSITIONS * 0.5) - CELLSIZE;
}

return positions;