/// @description Insert description here
// You can write your code in this editor
shader_set(shader_ripple_ext)
shader_set_uniform_f(uTime,current_time / 10000)
shader_set_uniform_f(uFxMix, fx);

draw_sprite(sprite_index, 0, 0, 0);
shader_reset();

