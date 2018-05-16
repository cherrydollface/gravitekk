// Draw menu
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(font0);
draw_set_colour(c_white)

// Draw menu elements
for(var i = 0; i < array_length_1d(global.menuElements); i++){
    draw_text(x + SPACE_BETWEEN_POSITIONS, y + (i * SPACE_BETWEEN_POSITIONS), string(global.savedGames[i]))
    }

