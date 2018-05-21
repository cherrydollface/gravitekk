if(state == BGSTATE_IDLE) {
    draw_background(cur_bg, 0, 0);
} else {
    if(state == BGSTATE_FADE_OUT) {
        a = clamp(a - (fade * 0.05),0,1); 
        draw_set_alpha(a);
        draw_background(cur_bg, 0, 0);   
        draw_set_alpha(1); 
        if(a == 0) {
           state = BGSTATE_FADE_IN; 
           cur_bg = new_bg;
        }      
    } else {
        if(state == BGSTATE_FADE_IN) {
            a = clamp(a + (fade * 0.05),0,1); 
            draw_set_alpha(a);
            draw_background(cur_bg, 0, 0);   
            draw_set_alpha(1);
            if (a == 1) {
                state = BGSTATE_IDLE;
            }        
        }
    }
}

