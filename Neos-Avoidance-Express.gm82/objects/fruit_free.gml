#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//creation code‚É‚Ätrg=xx‚Æ‹Lq‚·‚é‚±‚Æ‚ÅAŽ©—R‚ÉƒgƒŠƒK[‚ðŽw’è‚Å‚«‚Ü‚·
//v=xx,h=xx‚Æ‘‚­‚±‚Æ‚Å‚»‚ê‚¼‚ê‰º•ûŒü‚Æ‰E•ûŒü‚Ö‚Ì‘¬“x‚ðŽw’è‚µ‚Ü‚·B
//‚ ‚é‚¢‚ÍAdir=xx,spd=xx‚Æ‘‚­‚±‚Æ‚Å’¼ÚŠp“x‚Æ‘¬“x‚ðŽw’è‚·‚é‚±‚Æ‚à‚Å‚«‚Ü‚·B
//‚½‚¾‚µ‚±‚ê‚Ífreetrigger‚É‚Ì‚Ý—LŒø‚Å‚·
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/15
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (vspeed==0 && hspeed=0) {
    if (freetrigger.triggered=trg) {
        if(v!=0 || h!=0){
        vspeed=v;
        hspeed=h;
        }else if(spd!=0){
        direction=dir
        speed=spd
        }
    }
}
