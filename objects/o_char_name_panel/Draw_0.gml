/// @description Insert description here
// You can write your code in this editor
if(charName == "") return 0;
var pWidth = string_length(charName) * 10;
draw_rectangle_color(x, y, x + CELLSIZE * 17 + CELLSIZE * 0.5, y + CELLSIZE * 0.5, 0, 0, 127, 0.5, 0);
draw_text(x, y, charName);