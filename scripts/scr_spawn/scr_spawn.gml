for (i = 0; i < instance_number(o_scripted_object); i += 1) {
	var scriptedObject = instance_find(o_scripted_object, i);
	if(scriptedObject.hitag == argument0) {
		with scriptedObject do {
			instance_create_depth(x, y, depth, argument1);
		}		
	}
}
