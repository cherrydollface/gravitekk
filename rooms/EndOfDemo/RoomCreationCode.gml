with instance_find(o_state_callback, 0) do 
{
	messager_script = scr_chapters;
	sequence_index = CHAPTER_2;
	instance_create_layer(x, y, LAYER_DEFAULT_OBJECT, o_chapter_header);
}