script_execute(scr_player_move,-1,0,0,0,0);
/// Renew crystal beacon coordinates, if any
var crystal = instance_find(o_beacon_crystal, 0);
crystal.origin_x = x;
crystal.origin_y = y;

