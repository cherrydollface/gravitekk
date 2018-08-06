draw_set_colour(c_white);
draw_set_font(message_font);
draw_text_ext(x + CELLSIZE * 0.5, y + CELLSIZE * 0.5, string_hash_to_newline(message_draw), CELLSIZE * 0.5, CELLSIZE * (lookup_width_cells - 1));
if (characters >= message_length) {
	var ww;
	ww = string_width_ext( string_hash_to_newline(message_draw),  CELLSIZE * 0.5, CELLSIZE * (lookup_width_cells - 1));
	var hh;
	hh = string_height_ext(string_hash_to_newline(message_draw),  CELLSIZE * 0.5, CELLSIZE * (lookup_width_cells - 1));
	draw_text(x + CELLSIZE * 0.5 + ww, y + CELLSIZE * 0.5 + hh, "[]");
}