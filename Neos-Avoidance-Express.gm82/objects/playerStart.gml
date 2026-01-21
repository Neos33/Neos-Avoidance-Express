#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x+=17
y+=23
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒvƒŒƒCƒ„[‚ª‘¶Ý‚µ‚È‚¢ê‡AƒvƒŒƒCƒ„[‚ð¶¬
if(!instance_exists(player) && global.grav=0){
  instance_create(x,y,player);
}
