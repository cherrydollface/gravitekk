draw_set_color(c_yellow);
draw_set_font(pager_font)
draw_text(x - 300, y, global.energy);


surface_set_target(surf);
draw_set_color(c_yellow);
draw_set_font(pager_font)
draw_text(0, 0, string_hash_to_newline(message));
surface_reset_target();
draw_surface_part(surf,offset,0,width,string_width(string_hash_to_newline(message)), x, y);
