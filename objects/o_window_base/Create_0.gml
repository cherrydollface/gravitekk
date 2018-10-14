/// @description Insert description here
// You can write your code in this editor
lookup_width_cells = 4;
lookup_height_cells = 4;

message_current = 0; //0 is the first number in our array, and the message we are currently at
 //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster
