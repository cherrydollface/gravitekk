/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

for (var i = 0; i < instance_number(o_invisible_trigger); i += 1)
{
	var tr = instance_find(o_invisible_trigger, i);
	if (tr.hitag == hitag && hitag != -1) {
		instance_destroy(tr);
	}
}
