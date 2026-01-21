#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//‰B‚µƒAƒCƒeƒ€‚Å‚·
//sprite‚ÍD‚«‚È‚à‚Ì‚ðŽw’è‚µ‚Ä‚­‚¾‚³‚¢
//‚·‚Å‚É‚±‚ÌƒAƒCƒeƒ€‚ðŽæ“¾Ï‚Ý‚È‚ço‚Ä‚«‚Ü‚¹‚ñ

if(global.item[3]=1){
instance_destroy();
}
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//‚±‚ÌƒAƒCƒeƒ€‚ð‚Æ‚é‚ÆŽæ‚Á‚½‚±‚Æ‚ª‹L˜^‚³‚ê‚Ü‚·(ƒZ[ƒu‚Í‚³‚ê‚Ü‚¹‚ñ)
global.item[3]=1;
sound_play(snditem);
instance_destroy();
