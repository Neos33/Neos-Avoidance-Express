#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//’µ‚Ë•Ô‚è‚ÌƒoƒO‚ª‹N‚«‚È‚¢‚æ‚¤‚ÉƒAƒjƒ[ƒVƒ‡ƒ“‘¬“x‚ð0‚É‚·‚é
image_speed=0

//global.speed‚ª0‚©1‚©‚É‚æ‚Á‚ÄƒXƒs[ƒh‚ð•Ï‚¦‚éB
//Šp“x‚Í360“x’†‚©‚çƒ‰ƒ“ƒ_ƒ€‚É‘ã“ü

if(global.speedup=0){
speed=2;
direction=random(360)
}
if(global.speedup=1){
speed=3;
direction=random(360)
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//global.reset=0‚Åsprite‚ªƒOƒŒ[‚ÌF‚Å‚Í‚È‚¢‚Æ‚«•Ç‚É’µ‚Ë•Ô‚éB

if(global.reset=0 && sprite_index!=sprCherryGray){
move_bounce_solid(0)
}


//global.reset2‚ª1‚Ì‚Æ‚«Asprite‚ðƒOƒŒ[‚É‚µ‚Ä¶‚Ö10‚Ì‘¬“x‚ÅˆÚ“®

if(global.reset2=1){
sprite_index=sprCherryGray
vspeed=0
hspeed=-10
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//‰æ–ÊŠO‚Éo‚½‚çƒIƒuƒWƒFƒNƒg‚ðÁ‚·
instance_destroy();
