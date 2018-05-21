bg_x = 0;
bg_y = 0;
bg_w = 0;
bg_h = 0;

step = 0;
slime_blur = 0.01;
uTime = shader_get_uniform(shader_ripple,"Time");

rescan_boundaries = false;

surf = surface_create(CELLSIZE, CELLSIZE);


