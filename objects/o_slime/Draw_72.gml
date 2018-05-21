if(rescan_boundaries) {
    surface_set_target(surf);
    draw_clear_alpha(0, 0);

    draw_background_part(test_tileset1, bg_x, bg_y, bg_w, bg_h, 0, 0);
 
    if (instance_position(x + 5, y - CELLSIZE * 0.5, o_slime) == noone) {
        // apply mask
        draw_set_blend_mode_ext( bm_dest_color, bm_zero );
          
        draw_sprite(sprite_slime_border_mask, MASK_TOP,  0, 0);
        draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha );
    }

    if (instance_position(x - CELLSIZE * 0.5, y + 5 , o_slime) == noone) {
        // apply mask
        draw_set_blend_mode_ext( bm_dest_color, bm_zero );
          
        draw_sprite(sprite_slime_border_mask, MASK_LEFT,  0, 0);
        draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha );
    }

    if (instance_position(x + CELLSIZE * 1.5, y + 5, o_slime) == noone) {
        // apply mask
        draw_set_blend_mode_ext( bm_dest_color, bm_zero );
          
        draw_sprite(sprite_slime_border_mask, MASK_RIGHT,  0, 0);
        draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha );
    }
    
    if (instance_position(x + 5, y + CELLSIZE * 1.5 , o_slime) == noone) {
        // apply mask
        draw_set_blend_mode_ext( bm_dest_color, bm_zero );
          
        draw_sprite(sprite_slime_border_mask, MASK_BOTTOM,  0, 0);
        draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha );
    }

   
    if (instance_position(x - CELLSIZE * 0.5, y + CELLSIZE * 1.5 , o_slime) == noone) {
        // apply mask
        draw_set_blend_mode_ext( bm_dest_color, bm_zero );
          
        draw_sprite(sprite_slime_border_mask, MASK_BOTTOM_LEFT,  0, 0);
        draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha );
    }
    
    if (instance_position(x - CELLSIZE * 0.5, y - CELLSIZE * 0.5 , o_slime) == noone) {
        // apply mask
        draw_set_blend_mode_ext( bm_dest_color, bm_zero );
          
        draw_sprite(sprite_slime_border_mask, MASK_TOP_LEFT,  0, 0);
        draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha );
    }

    if (instance_position(x + CELLSIZE * 1.5, y - CELLSIZE * 0.5 , o_slime) == noone) {
        // apply mask
        draw_set_blend_mode_ext( bm_dest_color, bm_zero );
          
        draw_sprite(sprite_slime_border_mask, MASK_TOP_RIGHT,  0, 0);
        draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha );
    }

    if (instance_position(x + CELLSIZE * 1.5, y + CELLSIZE * 1.5 , o_slime) == noone) {
        // apply mask
        draw_set_blend_mode_ext( bm_dest_color, bm_zero );
          
        draw_sprite(sprite_slime_border_mask, MASK_BOTTOM_RIGHT,  0, 0);
        draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha );
    }
                        
    surface_reset_target();
    rescan_boundaries = false;
}


