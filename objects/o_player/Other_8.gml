/// @description  Snap it!
move_snap( CELLSIZE * 0.5, CELLSIZE * 0.5 );

moving = 0;
var __b__;
__b__ = action_if_object(o_beacon_crystal, x, y);
if __b__
{
{
with (o_beacon_crystal) {
/// move beacon crystal

var dx = origin_x - (x + CELLSIZE * 0.5);
var dy = origin_y - (y + CELLSIZE * 0.5);

  // create path
    var p = path_add();
    path_add_point(p, 0, 0, 100);
    path_add_point(p, dx, dy, 100);
    path_set_closed(p, 0);
    path_set_kind(p, 0);
    // start path
    path_start(p, 2, path_action_stop, 0);

}
}
}
__b__ = action_if_object(o_gravipad_objective, x, y);
if __b__
{
{
/*	
var world = instance_find(o_mission_world, 0);
world.sequence_index = 6;//__b__.hitag;
world.currentDialogName = __b__.dialog_name;//__b__.hitag;
*/
instance_create_layer(96, 32, LAYER_DEFAULT_UI, o_window_dialog,);
}
}

__b__ = action_if_object(o_invisible_trigger, x, y);
if __b__
{
{
/*	
var world = instance_find(o_mission_world, 0);
world.sequence_index = 6;//__b__.hitag;
world.currentDialogName = __b__.dialog_name;//__b__.hitag;
*/
instance_destroy(triggerToDestroy);
instance_create_layer(96, 32, LAYER_DEFAULT_UI, o_window_dialog,);
}
}
