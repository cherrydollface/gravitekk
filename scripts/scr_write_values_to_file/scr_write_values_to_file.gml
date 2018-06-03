// Write values to the file
var file = argument0;
var category = argument1;
var section = argument2;
var value = argument3;

var category2 = argument4;
var section2 = argument5;
var value2 = argument6;

ini_open(file);

ini_write_string(category, section, value);
ini_write_string(category2, section2, value2);

ini_close();
