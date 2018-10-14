var numObj = instance_number(o_scripted_object);
var thingsToDestory = array_create(numObj);
var count = 0;
for (i = 0; i < numObj; i += 1) {
	var scriptedObject = instance_find(o_scripted_object, i);
	if(scriptedObject.hitag == argument0) {	
		thingsToDestory[count]=scriptedObject;
		count++;
	}
}

for(i = 0; i < count; i += 1) {
	instance_destroy(thingsToDestory[i]);
}

