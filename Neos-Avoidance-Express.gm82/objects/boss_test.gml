#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=101
relative=0
applies_to=self
invert=0
arg0=000101000
arg1=2
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=721
relative=0
invert=0
arg0=10
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=45
arg1=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=301
relative=0
applies_to=self
invert=0
arg0=45
arg1=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=201
relative=0
applies_to=self
invert=0
arg0=boss_item
arg1=x
arg2=y
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_bounce_solid(0)

if (!place_free(x+hspeed,y)) {
    hspeed=-hspeed;
}

if (!place_free(x,y+vspeed+yspeed)) {
    if (vspeed!=0) {
        yspeed=-vspeed;
        vspeed=0;
    }
    else {
        vspeed=-yspeed;
        yspeed=0;
    }
}

y+=yspeed;

if (place_meeting(x,y-2,player)) {
    player.y+=vspeed+yspeed;
    with (player) {
        if (place_free(x+other.hspeed,y)) player.x+=other.hspeed;
    }
}

if (vspeed<0) {
    yspeed=vspeed;
    vspeed=0;
}
if (yspeed>0) {
    vspeed=yspeed;
    yspeed=0;
}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(flash=0){

//flashobject(ˆê‰ñ‚Ì“_–ÅŽžŠÔ,‡Œv‚Ì“_–Å‰ñ”)‚ÅŠÈ’P‚É“_–Åˆ—‚ª‚Å‚«‚Ü‚·
//“_–Å’†‚ÍŽ©“®“I‚Éflash=1‚Æ‚È‚é‚Ì‚Å–³“Gˆ—‚àŠÈ’P‚Å‚·
//‚±‚Ìê‡A10step‚ÌŠÔŠu‚Å6‰ñ“_–Å‚·‚é‚±‚Æ‚É‚È‚è‚Ü‚·

flashobject(10,6)

sound_play(sndBossHit)
health-=1
with(other)instance_destroy()

if(health=0){
instance_destroy()
with(blockNotVis)instance_destroy()
}

}
