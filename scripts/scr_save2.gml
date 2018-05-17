if(file_exists("Save.sav")) file_delete("Save.save")
ini_open("Save.sav");
var savedRoom = room;
ini_write_real("Save1", "room", savedRoom);
//ini_write_real("Save1", "points", global.points);
ini_close();
