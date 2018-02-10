// Move selected area in menu
// Start position 
var move = 0;

// Change postion
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

// Reach maximum or minimum position value
if(move != 0){
    menuPosition += move;
    if(menuPosition < 0) menuPosition = array_length_1d(global.menuElements) - 1;  
    if(menuPosition > array_length_1d(global.menuElements) - 1) menuPosition = 0;  
}

