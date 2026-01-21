#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//fall01‚æ‚è‚àŽ©—R‚ÉÝ’è‚ª‚Å‚«‚éspike‚Å‚·

//creation code‚É‚Ätrg=xx‚Æ‹Lq‚·‚é‚±‚Æ‚ÅAŽ©—R‚ÉƒgƒŠƒK[‚ðŽw’è‚Å‚«‚Ü‚·
//v=xx,h=xx‚Æ‘‚­‚±‚Æ‚Å‚»‚ê‚¼‚ê‰º•ûŒü‚Æ‰E•ûŒü‚Ö‚Ì‘¬“x‚ðŽw’è‚µ‚Ü‚·B
//‚ ‚é‚¢‚ÍAdir=xx,spd=xx‚Æ‘‚­‚±‚Æ‚Å’¼ÚŠp“x‚Æ‘¬“x‚ðŽw’è‚·‚é‚±‚Æ‚à‚Å‚«‚Ü‚·B
//‚½‚¾‚µ‚±‚ê‚Ífreetrigger‚É‚Ì‚Ý—LŒø‚Å‚·

depth=1000002
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=541
applies_to=self
invert=0
arg0=sprSpike
arg1=0
arg2=0
*/
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
else {
    if (y>ystart+32 || y<ystart-32 || x>xstart+32 || x<xstart-32) depth=0;
}
