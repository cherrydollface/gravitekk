image_blend = -1;
var i;
for (i = 0; i < instance_number(o_char_parent); i += 1) {
    var character = instance_find(o_char_parent, i);
    if (character != argument0) {
        with character do
        {
            image_blend = c_dkgray;
        }
    }
}
