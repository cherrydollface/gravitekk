// find instace, that represents the other part of Gravitekk

// get the other instance
// let's say we have strictly 2 instances of gravitekk
var otherpart;
for (i = 0; i < instance_number(player); i += 1)
{
    if (instance_find(player,i) != self.id) {
        var otherpart = instance_find(player,i);
    }
}
return otherpart;

