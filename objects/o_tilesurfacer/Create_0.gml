/// @description loop through room and find tile of -5 depth and create a collision object.
for (var xx = 0; xx <= room_width; xx += CELLSIZE)
    for (var yy = 0; yy <= room_height; yy += CELLSIZE) {
        if (tile_layer_find(1, xx, yy)) {
            instance_create(xx, yy, o_solid);
        }
    }

bloodfilth_surf = surface_create(room_width, room_height);
surface_set_target(bloodfilth_surf);
draw_clear_alpha(0, 0);
surface_reset_target();

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

ds_queue_enqueue(layers, LAYER_GROUND);
ds_queue_enqueue(layers, LAYER_AUX1);
ds_queue_enqueue(layers, LAYER_SLIME);
ds_queue_enqueue(layers, LAYER_AUX2);
ds_queue_enqueue(layers, LAYER_SOLID);
ds_queue_enqueue(layers, LAYER_OVERLAYS);


// Assumes that the tiles in a room are in a regular grid,
// and tiles have a minimum size equal to the following:
var tilewidth;
tilewidth = CELLSIZE;
var tileheight;
tileheight = CELLSIZE;

surface_width = room_width / surfaces_w;
surface_height = room_height / surfaces_h;

var i, j;

// Create the normal surfaces
for (i = 0; i < surfaces_w; i += 1) {
    for (j = 0; j < surfaces_h; j += 1) {
        surf[i, j] = surface_create(surface_width, surface_height);
        surface_set_target(surf[i, j]);
        draw_clear_alpha(0, 0);
        surface_reset_target()

		// Create the most lower surfaces (ground, dirt, etc)
		// blood and filth will be drawn above it

		surf_ground[i, j] = surface_create(surface_width, surface_height);
        surface_set_target(surf_ground[i, j]);
        draw_clear_alpha(0, 0);
        surface_reset_target()
    }
}

do {
    // For each tile layer
    var layerdepth;
    layerdepth = ds_queue_dequeue(layers);
    // Copy all the tiles to the corresponding surface
    for (i = 0; i < surfaces_w; i += 1) {
        for (j = 0; j < surfaces_h; j += 1) {

			if(layerdepth != LAYER_GROUND) {
				surface_set_target(surf[i, j]);
			} else {
				surface_set_target(surf_ground[i, j]);
			}
            
            for (xx = surface_width * i; xx < (surface_width * (i + 1)); xx += tilewidth) {
                for (yy = surface_height * j; yy < (surface_height * (j + 1)); yy += tileheight) {
                    var t;
					var ll = layer_get_id(layerdepth);
					if ll = -1 continue;
					var lt = layer_tilemap_get_id(ll);
					if lt = -1 continue;
                    t = tilemap_get_at_pixel(lt, xx, yy);
                    if (!tile_get_empty(t)) {

						var pl_res = scr_slime_tilesurface_plugin(layerdepth, xx, yy, tilemap_get_tileset(lt), t);
                        
                        if (layerdepth == LAYER_GROUND) {                              
                            draw_set_blend_mode_ext(bm_one, bm_one);    
                        }

						if(pl_res == 0) {
							draw_tile(tilemap_get_tileset(lt), t, 0, xx - (surface_width * i), yy - (surface_height * j));
						}
                        
						var empty_tile_data = tile_set_empty(t);
						// delete the file
						tilemap_set_at_pixel(lt, empty_tile_data, xx, yy);
                    }
                }
            }
            surface_reset_target();
        }
    }
}
until ds_queue_empty(layers);

ds_queue_destroy(layers);

