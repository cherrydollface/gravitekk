//first check for neighbor (horizontal)
var inst = instance_place(x+(image_xscale*32),y,o_solid);
//if our next neighbor collision object is last exit;
 if (instance_position(x+(image_xscale*32),y,o_solid)==noone)
   inst = noone;
while (inst!=noone) //repeat
    {
    image_xscale+=1; //set our xscale +1
    with (inst) instance_destroy(); //destroy neighbor

    //check if our neighbor is not last
    if (instance_position(x+(image_xscale*32)+32,y,o_solid)==noone)
    {
        inst = noone;//if last than break ( checking last because of vertical collision)
        break;
    }
    else
    {
        inst = instance_position(x+(image_xscale*32),y,o_solid)//find new neighbor
    }
    }
   

///vertical checking

if (image_xscale==1){ //if our xscale doesnot change.
//first check for neighbor (vertically
var inst = instance_place(x,y+(image_yscale*32),o_solid);

while (inst!=noone)//repeat
    {
    image_yscale+=1; //set our yscale +1
   if (inst.image_xscale==1) //if our neighbor xscale is 1 then destroy it otherwise dont leave.
   with (inst) instance_destroy();
   
    inst = instance_position(x,y+(image_yscale*32),o_solid) //check for another neighbor
    }
}

