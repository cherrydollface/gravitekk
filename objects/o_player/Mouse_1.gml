script_execute(scr_player_move,1,0,0,0,0);
/// Renew crystal beacon coordinates, if any
var crystal = instance_find(o_beacon_crystal, 0);
if(crystal != noone) {
	crystal.origin_x = x;
	crystal.origin_y = y;
}

rotation_delta = 1;

for (i = 0; i < instance_number(o_player); i += 1) {
    if (instance_find(o_player, i) != self.id) {
        var otherpart = instance_find(o_player, i);
		otherpart.rotation_delta = 1;
    }
}
