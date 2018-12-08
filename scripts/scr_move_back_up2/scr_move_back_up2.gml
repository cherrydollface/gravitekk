if(engaged) return 0;
lotag++;
var multiplex = -1;
if(lotag % 2) multiplex = 1;
for (var i = 0; i < instance_number(o_moving_wall); i += 1) {
	var scriptedObject = instance_find(o_moving_wall, i);
	if(scriptedObject.hitag == argument0) {
		with scriptedObject do {


	// create path
    var p = path_add();
//  path_set_kind(p, 1);
//	path_set_precision(p, 8);


	path_add_point(p, 0, 0, 100);
	path_add_point(p, 0, CELLSIZE * 2 * multiplex, 100);
	
    path_set_closed(p, 0);
	 // start path
	    path_start(p, 4, path_action_stop, 0);
			
		}		
	}
}
instance_destroy(self);

/*
for (var i = 0; i < instance_number(o_moving_wall); i += 1) {
	var scriptedObject = instance_find(o_moving_wall, i);
	if(scriptedObject.hitag == argument0 + 1) {
		with scriptedObject do {


	// create path
    var p = path_add();
//  path_set_kind(p, 1);
//	path_set_precision(p, 8);


	path_add_point(p, 0, 0, 100);
	path_add_point(p, -CELLSIZE * 2 * multiplex, 0, 100);
	
    path_set_closed(p, 0);
	 // start path
	    path_start(p, 4, path_action_stop, 0);
			
		}		
	}
}

*/