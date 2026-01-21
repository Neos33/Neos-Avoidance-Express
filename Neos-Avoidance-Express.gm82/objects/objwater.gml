#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//‚Ó‚í‚Ó‚í‚·‚é‚Æ‚æ‚­Œ¾‚í‚ê‚é…’†B
//takatata‚Æ‚©‚ÉŽg‚í‚ê‚Ä‚Ü‚·
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with (player) {
djump=1
if(vspeed > 2) {vspeed = 2;}
}
#define Collision_player2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with (player2) {
djump=1
if(vspeed < -2) {vspeed = -2;}
}
