var bloodsystem = instance_find(o_bloodsack, 0);
part_emitter_region(bloodsystem.partBlood_sys, bloodsystem.partBlood_emit, x, y, x + 32, y - 32, 1, 1);
part_emitter_burst(bloodsystem.partBlood_sys, bloodsystem.partBlood_emit, bloodsystem.partBlood, 20);
instance_create(x, y, o_death);
instance_destroy(self);

