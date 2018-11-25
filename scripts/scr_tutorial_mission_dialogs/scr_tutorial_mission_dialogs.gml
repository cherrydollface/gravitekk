var message = ds_queue_create();

if (currentDialogName == "ColorPadTest") {
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Добро пожаловать в патруль, катись он червём!");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Перед вылетом необходима проверка основных функциональных узлов вашей боевой машины");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Шаг первый - функциональность инжереной башни (она отмечена зеленым цветом на вашем тактическом визоре)");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Установите инженерную (зеленую) башню гравитанка на зеленую платформу-маяк, чтобы открыть ворота ангара");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "И поторапливайся там, а то сегодня в офицерском клубе вечер одиноких сердец");
ds_queue_enqueue(message, "<sprite_hero>");
ds_queue_enqueue(message, "Тебе все равно не светит");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Поговори еще тут и из патрулей не вылезешь до деревянного бушлата, понял?");
} else
if (currentDialogName == "Fuck") {
ds_queue_enqueue(message, "<o_sprite_dispatcher>");
ds_queue_enqueue(message, "Черт-черт");
}
return message;