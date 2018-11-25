/*
var world = instance_find(o_mission_world, 0);

if(world.sequence_index = 6) {
     //write your messages in an array, starting at 0, like so
    message[0] = "Лицо солдата - это его сапоги...";
    message[1] = "Они должны постоянно сиять как улыбка идиота...";
    message[2] = "Кто не понял, показываю...";   
    message[3] = "Добро пожаловать в очередную смену гравитекк-патруля...";
    message[4] = "За бортом +32 по Цельсию, влажность 55% и горы копошащегося червячьего отребья...";
    message[5] = "Это был прогноз погоды на сегодня, на завтра и навсегда."
    message[6] = "C вами радиостанция `Матросская тишина`, не переключайтесь"
} else {
	if(world.sequence_index == 100) {
		message[0] = "Миссия выполнена!"
	} else {
		message[0] = "Unknown dialog sequence!"
	}
    
}

*/
var message = ds_queue_create();
if (currentDialogName == "ColorPadTest") {
ds_queue_enqueue(message, "<o_sprite_dispatcher>");
ds_queue_enqueue(message, "Добро пожаловать в патруль, катись он червём!");
ds_queue_enqueue(message, "<o_sprite_dispatcher>");
ds_queue_enqueue(message, "Перед вылетом необходима проверка основных функциональных узлов вашей боевой машины");
ds_queue_enqueue(message, "<o_sprite_dispatcher>");
ds_queue_enqueue(message, "Шаг первый - функциональность инжереной башни (она отмечена зеленым цветом на вашем тактическом визоре)");
ds_queue_enqueue(message, "<o_sprite_dispatcher>");
ds_queue_enqueue(message, "Установите инженерную (зеленую) башню гравитанка на зеленую платформу-маяк, чтобы открыть ворота ангара");
ds_queue_enqueue(message, "<o_sprite_dispatcher>");
ds_queue_enqueue(message, "И поторапливайся там, а то сегодня в офицерском клубе вечер одиноких сердец");
} else
if (currentDialogName == "Fuck") {
ds_queue_enqueue(message, "<o_sprite_dispatcher>");
ds_queue_enqueue(message, "Черт-черт");
}
return message;
