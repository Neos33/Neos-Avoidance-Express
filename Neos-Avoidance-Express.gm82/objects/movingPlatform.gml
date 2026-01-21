#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//“®‚­°‚Ì’µ‚Ë•Ô‚è‚Æ‚©ƒvƒŒƒCƒ„[‚ªG‚ê‚Ä‚é‚Æ‚«‚Æ‚©‚ÌÝ’è
//‚¢‚¶‚ç‚È‚¢‚±‚Æ‚ð‚¨Š©‚ß‚·‚é
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
    a=instance_place(x,y-2,player)
    a.y+=vspeed+yspeed;

    with (a) {
        if (place_free(x+other.hspeed,y)) x+=other.hspeed;
    }
}
if (place_meeting(x,y+17,player2)) {
    a=instance_place(x,y+17,player2)
    a.y+=vspeed+yspeed;

    with (a) {
        if (place_free(x+other.hspeed,y)) x+=other.hspeed;
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
#define Collision_niseblock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=113
applies_to=self
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=114
applies_to=self
invert=0
*/
