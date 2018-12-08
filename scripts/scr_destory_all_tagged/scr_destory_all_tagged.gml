	for (i = 0; i < instance_number(o_scripted_object); i += 1) {
		var obj = instance_find(o_scripted_object, i);
		if(obj.hitag == hitag && obj != self) {
			instance_destroy(obj);
		}		
	}