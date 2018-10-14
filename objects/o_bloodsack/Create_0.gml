partBlood_sys = part_system_create();

partBlood = part_type_create();
part_type_shape(partBlood, pt_shape_ring);
part_type_size(partBlood, 0.10, 0.30, -0.01, 0);
part_type_color1(partBlood, 255);
//part_type_alpha2(partBlood, 0.8, 0.2);
part_type_speed(partBlood, 1, 3, 0, 0);
part_type_direction(partBlood, 0, 359, 0, 0);
part_type_gravity(partBlood, 0.3, 270);
part_type_blend(partBlood, 1);
part_type_life(partBlood, 15, 30);

partBlood_emit = part_emitter_create(partBlood_sys);

partMagic = part_type_create();
part_type_shape(partMagic, pt_shape_pixel);
part_type_size(partMagic, 0.10, 6.6, -0.01, 0);
part_type_color1(partMagic, c_aqua);
//part_type_alpha2(partBlood, 0.8, 0.2);
part_type_speed(partMagic, 1, 3, 0, 0);
part_type_direction(partMagic, 0, 359, 0, 0);
part_type_gravity(partMagic, 0.0, 270);
part_type_blend(partMagic, 1);
part_type_life(partMagic, 15, 30);


