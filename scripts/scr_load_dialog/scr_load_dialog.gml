var result = ui_dialog_map[? currentDialogName];
var key = ds_map_find_first(ui_dialog_map);
var size = ds_map_size(ui_dialog_map);
for (var i = 0; i < size; i++;)
{
	show_debug_message(key);
	key = ds_map_find_next(ui_dialog_map, key); 
}


return result;