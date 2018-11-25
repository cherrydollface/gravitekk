draw_set_color(c_black);
var title = argument0;
draw_text(argument1 + 2, argument2 + 2, argument0)
	
draw_set_alpha(argument3);

if(string_copy(title, 0, 3) == "///" ) {
	draw_set_color(c_yellow);			
} else draw_set_color(c_white);

draw_text(argument1, argument2, title)
draw_set_alpha(1);
draw_set_color(c_white);			
