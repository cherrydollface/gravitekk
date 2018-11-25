//Current interpreter used by cursor logic for indetify position
switch(argument0){
	case "Start":{
		return MENU_MAIN_START;
		break;
	}
	case "Resume":{
		return MENU_PAUSE_RESUME;
	}
	case "Save":{
		return MENU_PAUSE_SAVE;
		break;
	}
	case "Load":{
		if(activeMenu == MENU_MAIN){
			return MENU_MAIN_LOAD;
		} else {
			return MENU_PAUSE_LOAD;
		}
		break;
	}
	case "Option":{
		if (activeMenu == MENU_MAIN){
			return MENU_MAIN_OPTION;
		}else{
			return MENU_PAUSE_OPTION}
		break;
	}
	case "About":{
		return MENU_MAIN_ABOUT;
		break;
	}
	case "Quit":{
		if (activeMenu == MENU_MAIN){
			return MENU_MAIN_QUIT;
		}else{
		return MENU_PAUSE_QUIT;}
		break;
	}
	case "Test":{
		return MENU_TEST;
		break;
	}
	default: 
		show_debug_message(scr_string_replace("Cant interprete string {}", string(argument0)))
		break;
}

//optionsMenu[0] = "Music";
//optionsMenu[1] = "Sound";