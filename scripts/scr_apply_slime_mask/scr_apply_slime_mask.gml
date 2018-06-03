var posx = argument0;
var posy = argument1;
var slime_mask_index = argument2;

if (instance_position(posx, posy, o_slime) == noone) {
   // apply mask
   draw_set_blend_mode_ext( bm_dest_color, bm_zero );
          
   draw_sprite(sprite_slime_border_mask, slime_mask_index,  0, 0);
   draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha );
}
