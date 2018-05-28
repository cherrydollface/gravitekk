
var i;
for (i = 0; i < instance_number(o_slime); i += 1)
{
   var slime = instance_find(o_slime,i);
   slime.rescan_boundaries = true;
}
surface_free(surf);
var tilesurfacer = instance_find(o_tilesurfacer, 0);

surface_set_target(tilesurfacer.bloodfilth_surf);
//draw_set_blend_mode_ext(bm_dest_color, bm_zero);
draw_set_alpha(0.8);
draw_sprite(sprite_bloodsplat1, 0, x - 64, y - 64);
draw_set_alpha(1.0);
draw_set_blend_mode(bm_normal);
surface_reset_target();
