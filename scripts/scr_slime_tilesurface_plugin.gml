var layerdepth = argument0;
var xx = argument1;
var yy = argument2;
if (layerdepth == 997) { 
    var obj = instance_create(xx, yy, o_slime);    
    obj.bg_x = argument3;
    obj.bg_y = argument4;
    obj.bg_w = argument5;
    obj.bg_h = argument6;
    return 4;
}
return 0;

