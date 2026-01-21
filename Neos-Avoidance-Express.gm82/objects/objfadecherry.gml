#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/15

fadeobject(0,50)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(fadein_finish){
fadein_finish=0
fadeobject(1,50)
}

if(fadeout_finish){
fadeout_finish=0
fadeobject(0,50)
}
