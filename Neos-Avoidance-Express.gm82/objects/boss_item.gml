#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=105
relative=0
applies_to=self
invert=0
arg0=player.x
arg1=player.y
arg2=5
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/15;
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//if this is a dynamic cherry
//that flies off when the player goes near it
//it should destroy itself when it leaves the room
instance_destroy();
