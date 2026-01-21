#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/15;

//Ž©‹@‘_‚¢‚¾‚¯‚ÇŠgŽU‚·‚é‚è‚ñ‚²
//Ž©‹@‚Ì‰ñ‚è128‚Ì‚¤‚¿ƒ‰ƒ“ƒ_ƒ€‚ÈˆÊ’u‚ðŽw’è
xx=player.x+random_range(-128,128)
yy=player.y+random_range(-128,128)


//global.speedup‚ª0‚©1‚©‚É‚æ‚Á‚ÄƒXƒs[ƒh‚ð•Ï‚¦‚é
//Ž©g‚Æxx,yy‚Æ‚ÌŠp“x‚ð‹‚ßA‚»‚Ì•ûŒü‚ÉˆÚ“®
if(global.speedup=0){
speed=4;
direction=point_direction(x,y,xx,yy)
}
if(global.speedup=1){
speed=6;
direction=point_direction(x,y,xx,yy)
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//‰æ–ÊŠO‚Éo‚½‚çƒIƒuƒWƒFƒNƒg‚ðÁ‚·
instance_destroy();
