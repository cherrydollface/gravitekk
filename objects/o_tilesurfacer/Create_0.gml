/// @description loop through room and find tile of -5 depth and create a collision object.
for (var xx = 0; xx <= room_width; xx += CELLSIZE)
    for (var yy = 0; yy <= room_height; yy += CELLSIZE) {
        if (tile_layer_find(1, xx, yy)) {
            instance_create(xx, yy, o_solid);
        }
    }


// Number of surfaces to divide the room into,
// lengthways and widthways.
// The room should be evenly divisible by this.
// (Try just 1 first, to see if it works.)
surfaces_w = 1;
surfaces_h = 1;

// List of room's tile layers to flatten into a single layer.
// If some layers cannot be flattened, consider modifying
// this object so that multiple instances can be used.
var layers;
layers = ds_queue_create();
// Must be in descending order

ds_queue_enqueue(layers, 1000000);
ds_queue_enqueue(layers, 999);
ds_queue_enqueue(layers, 997);
ds_queue_enqueue(layers, 996);



// Assumes that the tiles in a room are in a regular grid,
// and tiles have a minimum size equal to the following:
var tilewidth;
tilewidth = CELLSIZE;
var tileheight;
tileheight = CELLSIZE;

surface_width = room_width / surfaces_w;
surface_height = room_height / surfaces_h;

var i, j;
// Create the surfaces
for (i = 0; i < surfaces_w; i += 1) {
    for (j = 0; j < surfaces_h; j += 1) {
        surf[i, j] = surface_create(surface_width, surface_height);
        surface_set_target(surf[i, j]);
        draw_clear_alpha(0, 0);
        surface_reset_target()
    }
}

var count;
count = 0;

do {
    // For each tile layer
    var layerdepth;
    layerdepth = ds_queue_dequeue(layers);
    // Copy all the tiles to the corresponding surface
    for (i = 0; i < surfaces_w; i += 1) {
        for (j = 0; j < surfaces_h; j += 1) {
            surface_set_target(surf[i, j]);
            // Since tile_layer_find() is the only way to access room tiles,
            // we must sweep over the entire room.
            for (xx = surface_width * i; xx < (surface_width * (i + 1)); xx += tilewidth) {
                for (yy = surface_height * j; yy < (surface_height * (j + 1)); yy += tileheight) {
                    var t;
                    t = tile_layer_find(layerdepth, xx, yy);
                    if (tile_exists(t)) {
                        var b;
                        b = tile_get_background(t);
                        var l;
                        l = tile_get_left(t);
                        var p;
                        p = tile_get_top(t);
                        var w;
                        w = tile_get_width(t);
                        var h;
                        h = tile_get_height(t);
                        var pl_res = scr_slime_tilesurface_plugin(layerdepth, xx, yy, l, p, w, h);
                        
                        if (layerdepth < 1000) { 
                             draw_set_colour_write_enable(true, true, true, false)
                            //draw_enable_alphablend(false); 
                            //draw_set_blend_mode_ext(bm_one, bm_one);    
                        }
                        if(pl_res == 0) {
                            draw_background_part(b, l, p, w, h, xx - (surface_width * i), yy - (surface_height * j));
                        }

                        
                        draw_set_blend_mode(bm_normal);    
                        draw_enable_alphablend(true);
                        draw_set_colour_write_enable(true, true, true, true)
                            
                        tile_delete(t);
                        count += 1;
                    }
                }
            }
            surface_reset_target();
        }
    }
}
until ds_queue_empty(layers);

ds_queue_destroy(layers);

