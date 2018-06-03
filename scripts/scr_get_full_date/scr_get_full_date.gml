// Return current date hh/mm/ss day/mon/year

var year = string(current_year)
var month = string (current_month)
var day = string(current_day)
var hours = string(current_hour)
var minutes = string(current_minute)

if (string_length(minutes) == 1){
	minutes = string(0) + minutes}
	
if (string_length(hours) == 1){
	hours = string(0) + hours}
	
return " " + hours + ":" + minutes + " " + day + "/" + month + "/" + year + "."
