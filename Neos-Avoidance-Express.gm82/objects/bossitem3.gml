#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒ{ƒX‚ð“|‚µ‚½Žž‚ÉŒ»‚ê‚éƒAƒCƒeƒ€‚Å‚·
//ƒ{ƒX‚ð“|‚·‚Ü‚Å‚ÍŒ©‚¦‚È‚¢‚Ì‚ÅD‚«‚ÈêŠ‚É’u‚¢‚Ä‚­‚¾‚³‚¢
//¶ã‚Ìsprite‚É‚ÍD‚«‚Èsprite‚ðŽw’è‚µ‚Ä‚­‚¾‚³‚¢
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//instance_exsists()‚Ì()‚Ì’†‚Éƒ{ƒX‚ÌƒIƒuƒWƒFƒNƒg–¼‚ðŽw’è‚µ‚Ä‚­‚¾‚³‚¢
//‚»‚Ìƒ{ƒX‚ª•”‰®‚É‘¶Ý‚µ‚È‚­‚È‚Á‚½Žž‚±‚ÌƒAƒCƒeƒ€‚ªŒ»‚ê‚Ü‚·
//‚Ü‚½A‚·‚Å‚Éƒ{ƒX‚ª“|‚³‚ê‚Ä‚¢‚½‚çƒAƒCƒeƒ€‚Ío‚Ä‚«‚Ü‚¹‚ñ

if(instance_exists(xxx)=0){
visible=1
}

if(global.boss[3]=1){
instance_destroy();
}
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//‚±‚ÌƒAƒCƒeƒ€‚ð‚Æ‚é‚ÆAƒ{ƒX3‚ð“|‚µ‚½‚±‚Æ‚ª‹L˜^‚³‚ê‚Ü‚·(ƒZ[ƒu‚Í‚³‚ê‚Ü‚¹‚ñ)
//“¯Žž‚Éƒ‹[ƒ€“à‚Ìbossblock3‚ª”j‰ó‚³‚ê‚Ü‚·
if(visible=1){
global.boss[3]=1;
sound_play(sndBlockChange);
instance_destroy();
}
