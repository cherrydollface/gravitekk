if(global.energy <= 0) {
	with(other) do {
		action_path_end();
		/// Roll back to previos position
		x = prevx;
		y = prevy;
		move_snap( CELLSIZE * 0.5, CELLSIZE * 0.5);
		moving = 0;	
	}
	return 0;
}

global.energy -= 5;

var bloodsystem = instance_find(o_bloodsack, 0);
part_emitter_region(bloodsystem.partBlood_sys, bloodsystem.partBlood_emit, x, x + 32, y, y + 32, 1, 1);
part_emitter_burst(bloodsystem.partBlood_sys, bloodsystem.partBlood_emit, bloodsystem.partBlood, 20);
instance_create_layer(x, y, LAYER_DEFAULT_OBJECT, o_death);
instance_destroy(self);

