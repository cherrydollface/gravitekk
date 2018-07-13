/// @description Insert description here
// You can write your code in this editor

shader_set(shader_ripple1)
shader_set_uniform_f(uTime, current_time/1000);
shader_set_uniform_f(uFxMix, fx);

draw_clear_alpha(0, 1)
draw_set_alpha(1 - fx);
draw_set_colour(c_white);
draw_set_font(header_font);
draw_text_ext(x, y, string_hash_to_newline(message_draw), CELLSIZE * 0.5, CELLSIZE * (lookup_width_cells - 1));

shader_reset();