shader_set(shader_ripple)
shader_set_uniform_f(uTime,current_time/1000)

draw_surface(surf, x, y);
shader_reset();

