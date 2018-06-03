// Read value from ini or txt file
var file = argument0; // Location
var category = argument1; // Category
var value = argument2; // Requested file position


ini_open(file);

var output = ini_read_string( category, value, "" );

show_debug_message("Output info: " + string(output))
ini_close();

return output;
