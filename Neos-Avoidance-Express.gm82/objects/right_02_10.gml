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
arg0=sprSpikeRight
arg1=0
arg2=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (hspeed==0) {
    if (trigger02.triggered) {
        hspeed=10;
    }
}
else {
    if (x>xstart+32) depth=0;
}
