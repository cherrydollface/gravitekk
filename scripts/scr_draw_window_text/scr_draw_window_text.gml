draw_set_colour(c_white);
draw_set_font(message_font);
draw_text_ext(x + CELLSIZE * 0.5, y + CELLSIZE * 0.5, string_hash_to_newline(message_draw), CELLSIZE * 0.5, CELLSIZE * (lookup_width_cells - 1));
