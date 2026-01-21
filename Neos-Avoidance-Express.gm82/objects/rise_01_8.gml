#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
depth=1000002
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=self
invert=0
arg0=sprSpikeUp
arg1=0
arg2=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (vspeed==0) {
    if (trigger01.triggered) {
        vspeed=-8;
    }
}
else {
    if (y<ystart-32) depth=0;
}
