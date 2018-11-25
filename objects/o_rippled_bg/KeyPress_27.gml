/// @description Insert description here
// You can write your code in this editor
// check if there is a menu object
// if no -> create main menu

if (instance_number(o_menu_base) == 0) {
	instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_main)
}