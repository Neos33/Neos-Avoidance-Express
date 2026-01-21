#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//“ïˆÕ“x‚QˆÈã‚Åíœ‚·‚éƒZ[ƒuƒ|ƒCƒ“ƒg
image_speed=0;
saveTimer = -1; //ƒZ[ƒuƒ^ƒCƒ}[
if(global.difficulty > 1){
  instance_destroy();
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
saveTimer -= 1;
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒZ[ƒu‚µ‚ÄAˆê’èŽžŠÔƒZ[ƒu•s‰Â‚É‚·‚é
if(saveTimer < 0 && instance_exists(player) == true){
  saveTimer = 30;
  image_index = 1;
  image_speed = 0.017;
  saveGame();
}
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0;
image_index=0;
