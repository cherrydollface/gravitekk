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
	ddx = 0;
	ddy = 0;

    if (otherpart.x == x and otherpart.y > y) {
        dx = -CELLSIZE * argument0;
        dy = CELLSIZE;
		
		ddx = dx;
		ddy = 0;		
    } else {
        if (otherpart.x == x and otherpart.y < y) {
            dx = CELLSIZE * argument0;
            dy = -CELLSIZE;
			
			ddx = dx;
			ddy = 0;		
        } else
        if (otherpart.y == y and otherpart.x < x) {
            dx = -CELLSIZE;
            dy = -CELLSIZE * argument0;
			
			ddy = dy;
			ddx = 0;					
        } else
        if (otherpart.y == y and otherpart.x > x) {
            dx = CELLSIZE;
            dy = CELLSIZE * argument0;
			
			ddy = dy;
			ddx = 0;					
        }
    }
    
    // create path
    var p = path_add();
//  path_set_kind(p, 1);
//	path_set_precision(p, 8);


	path_add_point(p, 0, 0, 100);
	path_add_point(p, ddx, ddy, 100);
    path_add_point(p, dx, dy, 100);
	
    path_set_closed(p, 0);
    // start path
    path_start(p, 4, path_action_stop, 0);
    moving = 1;
}
