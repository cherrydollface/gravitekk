var char = instance_find(argument0, 0);
with (char) {
    // create path
    var p = path_add();
    path_add_point(p, 0, 0, 100);
    path_add_point(p, -room_width * 0.25, 0, 100);
    path_set_closed(p, 0);
    path_set_kind(p, 0);
    // start path
    path_start(p, 8, path_action_stop, 0);
}

