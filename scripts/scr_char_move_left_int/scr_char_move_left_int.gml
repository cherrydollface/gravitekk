    // create path
    var p = path_add();
    path_add_point(p, 0, 0, 100);
    path_add_point(p, room_width * 0.5, 0, 100);
    path_set_closed(p, 0);
    path_set_kind(p, 0);
    // start path
    path_start(p, 2, path_action_stop, 0);
    moving = 1;