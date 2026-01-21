#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ŒŒ‚Ì‚P“H
image_index = choose(0,1,2);
image_speed = 0;
if(global.grav=0){gravity = 0.1+random(0.2);}
else {gravity = -0.1+random(-0.2);}
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//•Ç‚ÉÕ“Ë‚·‚é‚Æ‚­‚Á‚Â‚­
if (!place_free(x+hspeed,y))
{
    if (hspeed<=0){move_contact_solid(180,abs(hspeed));}
    if (hspeed>0){move_contact_solid(0,abs(hspeed));}
    hspeed=0;
}

if (!place_free(x,y+vspeed))
{
    if (vspeed<=0){move_contact_solid(90,abs(vspeed));}
    if (vspeed>0){move_contact_solid(270,abs(vspeed));djump=1}
    vspeed=0;
}

speed=0;
gravity=0;
#define Collision_movingPlatform
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//“®‚­°‚É‚Í‚­‚Á‚Â‚©‚È‚¢
#define Collision_niseblock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//•Ç‚ÉÕ“Ë‚·‚é‚Æ‚­‚Á‚Â‚­
if (!place_free(x+hspeed,y))
{
    if (hspeed<=0){move_contact_solid(180,abs(hspeed));}
    if (hspeed>0){move_contact_solid(0,abs(hspeed));}
    hspeed=0;
}

if (!place_free(x,y+vspeed))
{
    if (vspeed<=0){move_contact_solid(90,abs(vspeed));}
    if (vspeed>0){move_contact_solid(270,abs(vspeed));djump=1}
    vspeed=0;
}

speed=0;
gravity=0;
#define Collision_niseblock2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//•Ç‚ÉÕ“Ë‚·‚é‚Æ‚­‚Á‚Â‚­
if (!place_free(x+hspeed,y))
{
    if (hspeed<=0){move_contact_solid(180,abs(hspeed));}
    if (hspeed>0){move_contact_solid(0,abs(hspeed));}
    hspeed=0;
}

if (!place_free(x,y+vspeed))
{
    if (vspeed<=0){move_contact_solid(90,abs(vspeed));}
    if (vspeed>0){move_contact_solid(270,abs(vspeed));djump=1}
    vspeed=0;
}

speed=0;
gravity=0;
#define Collision_liftblock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//“®‚­°‚É‚Í‚­‚Á‚Â‚©‚È‚¢
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy();
