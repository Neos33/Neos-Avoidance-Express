#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Œ©‚¦‚È‚¢‚¯‚ÇŒŒ‚ª‚Â‚­ƒuƒƒbƒN

if (!visible) {
    if (distance_to_object(player)<2 || distance_to_object(player2)<2) {
        sound_play(sndBlockChange);
        visible=1;
    }

}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=other
invert=0
*/
