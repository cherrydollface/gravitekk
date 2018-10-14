/// @description Insert description here
// You can write your code in this editor
var bloodsystem = instance_find(o_bloodsack, 0);
part_emitter_region(bloodsystem.partBlood_sys, bloodsystem.partBlood_emit, x, x + 32, y, y + 32, 1, 1);
part_emitter_burst(bloodsystem.partBlood_sys, bloodsystem.partBlood_emit, bloodsystem.partMagic, 80);

global.energy += 20;
instance_destroy(self);