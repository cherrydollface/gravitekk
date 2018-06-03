if(rescan_boundaries) {
    surface_set_target(surf);
    draw_clear_alpha(0, 0);

    draw_tile(slime_tileset, slime_tile, 0, 0, 0);
 
	scr_apply_slime_mask(x + 5, y - CELLSIZE * 0.5, MASK_TOP);
	scr_apply_slime_mask(x - CELLSIZE * 0.5, y + 5, MASK_LEFT);
	scr_apply_slime_mask(x + CELLSIZE * 1.5, y + 5, MASK_RIGHT);
	scr_apply_slime_mask(x + 5, y + CELLSIZE * 1.5, MASK_BOTTOM);
	
   	scr_apply_slime_mask(x - CELLSIZE * 0.5, y + CELLSIZE * 1.5, MASK_BOTTOM_LEFT);
	scr_apply_slime_mask(x - CELLSIZE * 0.5, y - CELLSIZE * 0.5, MASK_TOP_LEFT);
	scr_apply_slime_mask(x + CELLSIZE * 1.5, y - CELLSIZE * 0.5, MASK_TOP_RIGHT);    
	scr_apply_slime_mask(x + CELLSIZE * 1.5, y + CELLSIZE * 1.5, MASK_BOTTOM_RIGHT);    
                        
    surface_reset_target();
    rescan_boundaries = false;
}

