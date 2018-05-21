slime_blur = slime_blur + step;
if( slime_blur > 4 ) {  
    step = -0.05;
} else {
if( slime_blur < 0.1 ) { 
    step = 0.05;
}
}


