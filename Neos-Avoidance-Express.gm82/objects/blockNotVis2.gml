#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Œ©‚¦‚È‚¢‚µŒŒ‚ª‚Â‚©‚È‚¢ƒuƒƒbƒN

if (!visible) {
    if (distance_to_object(player)<2 || distance_to_object(player2)<2) {
        sound_play(sndBlockChange);
        visible=1;
    }
    if (instance_number(player)=0 && instance_number(player2)=0){
        instance_destroy()
    }
}
