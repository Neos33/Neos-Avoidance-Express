#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=20;

if(global.BloodEmitter_Face){
if(!global.BloodEmitter_3D){
instance_create(x,y,playerface);
}else{
instance_create(x,y,playerface3D);
}
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy();
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ŒŒ‚ð•¬o‚³‚¹‚Ü‚·i‚±‚Ì•Ó‚è‚Ì”’l‚ð‚¢‚¶‚ê‚Î’n‚Ì”‚ð§Œä‰Â”\j
var b;


if(!global.BloodEmitter_3D){
//Normalblood
    repeat(40){
      b = instance_create(x,y,blood);
      b.direction = irandom(35)*10;
      b.speed = random(6);
    }

}else{
//3Dblood
    repeat(15){
      b = instance_create(x,y,blood3D);
      b.direction = irandom(35)*10;
      b.speed = random(8);
    }

}
