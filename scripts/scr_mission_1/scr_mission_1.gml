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
    message[0] = "Unknown dialog sequence!"
}
