if global.gamestate != STATE_GAME {
    exit;
}

// get the other instance
// let's say we have strictly 2 instances of gravitekk
for (i = 0; i < instance_number(o_player); i += 1) {
    if (instance_find(o_player, i) != self.id) {
        var otherpart = instance_find(o_player, i);
    }
}

if (moving == 0 && otherpart.moving == 0) {
    prevx = x;
    prevy = y;

    dx = 0;
    dy = 0;

    if (otherpart.x == x and otherpart.y > y) {
        dx = -CELLSIZE * argument0;
        dy = CELLSIZE
    } else {
        if (otherpart.x == x and otherpart.y < y) {
            dx = CELLSIZE * argument0;
            dy = -CELLSIZE;
        } else
        if (otherpart.y == y and otherpart.x < x) {
            dx = -CELLSIZE;
            dy = -CELLSIZE * argument0;
        } else
        if (otherpart.y == y and otherpart.x > x) {
            dx = CELLSIZE;
            dy = CELLSIZE * argument0;
        }
    }
    
    // create path
    var p = path_add();
    path_add_point(p, 0, 0, 100);
    path_add_point(p, dx, dy, 100);
    path_set_closed(p, 0);
    path_set_kind(p, 0);
    // start path
    path_start(p, 2, path_action_stop, 0);
    moving = 1;
}
