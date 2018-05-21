var widthCells = argument0;
var heightCells = argument1;

draw_sprite_part(sprite_window, 0, 0, 0, CELLSIZE, CELLSIZE, x, y)
var i;
var c = 1;
var cc = 1;
for (i = 1; i < widthCells; i += 1) {
    draw_sprite_part(sprite_window, 0, CELLSIZE, 0, CELLSIZE, CELLSIZE, x + i * CELLSIZE, y);
    c++;
}

draw_sprite_part(sprite_window, 0, CELLSIZE * 2, 0, CELLSIZE, CELLSIZE, x + c * CELLSIZE, y);
for (j = 1; j < heightCells; j += 1) {
    draw_sprite_part(sprite_window, 0, 0, CELLSIZE, CELLSIZE, CELLSIZE, x, y + CELLSIZE * j);
    c = 1;
    for (i = 1; i < widthCells; i += 1) {
        draw_sprite_part(sprite_window, 0, CELLSIZE, CELLSIZE, CELLSIZE, CELLSIZE, x + i * CELLSIZE, y + CELLSIZE * j);
        c++;
    }
    draw_sprite_part(sprite_window, 0, CELLSIZE * 2, CELLSIZE, CELLSIZE, CELLSIZE, x + c * CELLSIZE, y + CELLSIZE * j);
    cc++;
}
draw_sprite_part(sprite_window, 0, 0, CELLSIZE * 2, CELLSIZE, CELLSIZE, x, y + cc * CELLSIZE)
for (i = 1; i < widthCells; i += 1) {
    draw_sprite_part(sprite_window, 0, CELLSIZE, CELLSIZE * 2, CELLSIZE, CELLSIZE, x + i * CELLSIZE, y + cc * CELLSIZE);
}
draw_sprite_part(sprite_window, 0, CELLSIZE * 2, CELLSIZE * 2, CELLSIZE, CELLSIZE, x + c * CELLSIZE, y + cc * CELLSIZE);

