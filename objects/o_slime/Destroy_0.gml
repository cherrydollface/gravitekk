
var i;
for (i = 0; i < instance_number(o_slime); i += 1)
{
   var slime = instance_find(o_slime,i);
   slime.rescan_boundaries = true;
}
surface_free(surf);

