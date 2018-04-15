var world = instance_find(o_mission_world, 0);
if(world.sequence_index = 6) {
     //write your messages in an array, starting at 0, like so
    message[0] = "Hello there! Welcome to the world of Pokemon!";
    message[1] = "My name is Oak! People call me the Pokemon Prof!";
    message[2] = "This world is inhabited by creatures called Pokemon!";
    message[3] = "For some people, Pokemon are pets.";
    message[4] = "Others use them for fights.";
    message[5] = "Myself...";
    message[6] = "I study Pokemon as a profession.";                                          
} else {
    message[0] = "Unknown dialog sequence!"
}
