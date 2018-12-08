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
if (currentDialogName == "EnergoTrapTest") {
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Шаг второй - функциональность детектора эй-джи ловушек");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Эй-джи ловушка для штурманской (синей) башни должна подсвечиваться зеленым на вашем тактическом визоре");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "А для зеленой (боевой) башни - синим");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Смотри, шипованная голова, не перепутай!");
ds_queue_enqueue(message, "<sprite_hero>");
ds_queue_enqueue(message, "Ээээ... кого не перепутать?");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "...");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Специально для вас, консервоголовых, боевая машина обородувана автоматическим механизмом защиты от эй-джи ловушек");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Наступить башней на ловушку машина тебе просто не позволит, так что придется тебе ее огибать, совершая маневр башнями");
ds_queue_enqueue(message, "<sprite_hero>");
ds_queue_enqueue(message, "Ok. Понял");
} else
if (currentDialogName == "SlimeTest") {
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Червячий хлеб!");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Кто-то из вас, недоносков, опять забыл закрыть за собой шлюз в ангар!");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Червячья слизь теперь расползась по ремзоне!");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "А это значит, что самое время проверить твои плазменные резаки, установленные по периметру башен!");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Подбери-ка энергокристаллы в левом крыле склада, если еще этого не сделал");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Они подзарядят тебе пиро-катушки и ты сможешь хорошенько прожарить всю эту пакость, просто пролетев сквозь нее");
} else
if (currentDialogName == "CrystalTest") {
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Тот пес, который забыл закрыть ангар, похоже еще и долбанный сладкоежка заодно");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Теперь кристалл-маяк, который запирает шлюз валяется где-то в поле, под слоем слизи");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Найди его и приволоки к гнезду, чтобы закрыть шлюз");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Гнездо должно мигать синим на твоем тактическом визоре");
ds_queue_enqueue(message, "<sprite_hero>");
ds_queue_enqueue(message, "Что-то я не припомню, чтобы патрульная-постовая служба предполагала курьерскую работу");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Как хочешь");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Я тогда заклиню шлюз стойкой от робоскутера, и на базу ты вернешься только завтра, когда жуки соизволят дочинять запасной");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Устраивает?");
ds_queue_enqueue(message, "<sprite_hero>");
ds_queue_enqueue(message, "Тут же эту слизь перепахать - никаких резаков не хватит");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Я сегодня добрый, поэтому кое-что тебе подскажу");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "К юго-западу от тебя есть заначка с энергкристаллами");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Дорубишься до нее, и до кристалла-маяка будет рукой подать");
} else
if (currentDialogName == "SlimeStinks") {
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Черт, ну и воняет же эта дрянь!");
ds_queue_enqueue(message, "<sprite_hero>");
ds_queue_enqueue(message, "Что, опять портянку свою понюхал?");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Чтобы ее понюхать, мне надо снять его с твоей вентиляционной решетки");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Так что будь осторожен, если заходишь себе кабину проветрить");
} else
if (currentDialogName == "FoundCrystalHideout") {
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Заначку нашел - для патруля годен");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Теперь подсказка");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Последний раз, я видел к востоку отсюда прямо у бывшего здания мэрии");
ds_queue_enqueue(message, "<sprite_hero>");
ds_queue_enqueue(message, "А может, все-таки, рукой покажешь?");
ds_queue_enqueue(message, "<sprite_sarge>");
ds_queue_enqueue(message, "Для клепаноголовых выпускников залетного училища вроде тебя, уточняюю, двигайся направо, ориентируясь по тактическому визору");
} else
if (currentDialogName == "FoundBeaconCrystal") {
ds_queue_enqueue(message, "<sprite_hero>");
ds_queue_enqueue(message, "Вот он родимый кристалл-маяк");
ds_queue_enqueue(message, "<sprite_hero>");
ds_queue_enqueue(message, "Теперь осталось допереть его до гнезда и пол-смены позади");
}
return message
