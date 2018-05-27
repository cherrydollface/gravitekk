// Write values to the file
var file = argument0;
var category = argument1;
var section = argument2;
var value = rgument3;

ini_open(file);

ini_write_string(category, section, value);

ini_close();