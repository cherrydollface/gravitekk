/// @description loop through room and find tile of "Solid" layer and create a collision object.
for (var xx = 0; xx <= room_width; xx += CELLSIZE)
    for (var yy = 0; yy <= room_height; yy += CELLSIZE) {
		var ll = layer_get_id(LAYER_SOLID);
		if ll = -1 continue;
		var lt = layer_tilemap_get_id(ll);
		if lt = -1 continue;
        var t = tilemap_get_at_pixel(lt, xx, yy);
        if (!tile_get_empty(t)) {
            instance_create_layer(xx, yy, LAYER_DEFAULT_OBJECT, o_solid);
        }
    }
