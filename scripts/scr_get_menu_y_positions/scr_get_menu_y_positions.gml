// Create array of y positions for rectangle
number_of_positions = argument0;
y_pos = MENU_Y_POSITION;

var xPostition = MENU_X_POSITION + SPACE_BETWEEN_POSITIONS;
var xMaxRangePosition = xPostition + CELLSIZE * 6;
	
shift = 32;
positions = 0;

for(i = 0; i < number_of_positions ; i ++){
		// First y position
		positions[i * 2] = y_pos + (i * SPACE_BETWEEN_POSITIONS) - shift;
		// Last y position
		positions[(i * 2) + 1] = y_pos + ((i + 1) * SPACE_BETWEEN_POSITIONS) - shift;
}

return positions;