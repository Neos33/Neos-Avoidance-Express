#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
depth = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x + hspeed, y, objNeosBlockScreenBordersFinale)
{
    hspeed = -hspeed;
}

if place_meeting(x, y + vspeed, objNeosBlockScreenBordersFinale)
{
    vspeed = -vspeed;
}
