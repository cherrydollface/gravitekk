// Draw meny
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(font0);
draw_set_colour(c_white)

// Draw menu elements
for(var i = 0; i < array_length_1d(global.menuElements); i++){
    draw_text(x + spaceBetweenPositions, y + (i * spaceBetweenPositions), string(global.menuElements[i]))
    }

// Draw selection
draw_sprite(sprite_cursor, 0, x + 16, y + 16 + menuPosition * spaceBetweenPositions);
