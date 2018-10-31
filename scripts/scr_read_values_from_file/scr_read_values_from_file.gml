// Read value from ini or txt file
var file = argument0; // Location
var category = argument1; // Category
var section = argument2; // Requested file position

var category2 = argument3; // Category
var section2 = argument4; // Requested file position

ini_open(file);

var output = ini_read_string( category, section, "" ) + ini_read_string( category2, section2, "" );

ini_close();

return output;
