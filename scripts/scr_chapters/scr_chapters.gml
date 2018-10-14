var world = instance_find(o_mission_world, 0);
switch(world.sequence_index) {
	case CHAPTER_1:
		message[0]="Часть 1\nПатруль"
		break;	
	default:
		message[0]="Часть X\nБез названия"
		break;
}