var world = instance_find(o_mission_world, 0);
switch(world.sequence_index) {
	case CHAPTER_1:
		message[0]=get_localized_string("Chapter1");
		break;	
	default:
		message[0]="Chapter 0\nPlaceholder"
		break;
}