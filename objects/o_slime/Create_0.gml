step = 0;
slime_blur = 0.01;
uTime = shader_get_uniform(shader_ripple,"Time");

rescan_boundaries = false;

surf = surface_create(CELLSIZE, CELLSIZE);