#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//‰æ–Ê‚ðU‚é‚±‚Æ‚ªo—ˆ‚éI
//U‚éIU‚éI
//step‚Ìview_angle“à‚Ì”Žš‚ð‘å‚«‚­‚·‚é‚±‚Æ‚Å
//‚æ‚èƒJƒIƒX‚É‚È‚è‚Ü‚·B
//‚Ü‚½Astep‚Ì‚»‚Ì‘¼‚Ì‚à‚Ì‚Ì”Žš‚ð‘å‚«‚­‚·‚é‚Æ
//U‚è‚ªŒƒ‚µ‚­‚È‚èA
//¬‚³‚­‚·‚é‚Æ
//U‚è‚ª×‚©‚­‚È‚è‚Ü‚·B


global.smallexplosion = true;

alarm[0] = 30;
alarm[1] = alarm[0]+30;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.smallexplosion = false;

alarm[0] = 60;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.smallexplosion = true;

alarm[1] = 60;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(global.smallexplosion = true){
   view_wview = 800+choose(random(60),random(-60))
   view_hview = 600+choose(random(10),random(-10))
   view_angle = choose(random(5),random(-5))
}
