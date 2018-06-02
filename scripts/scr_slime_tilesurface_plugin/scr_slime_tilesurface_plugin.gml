var layerdepth = argument0;
var xx = argument1;
var yy = argument2;
if (layerdepth == LAYER_SLIME ) { 
    var obj = instance_create_layer(xx, yy, "Main", o_slime);    
	obj.slime_tileset = argument3;
	obj.slime_tile = argument4;
    obj.rescan_boundaries = true;
    return 4;
}
return 0;