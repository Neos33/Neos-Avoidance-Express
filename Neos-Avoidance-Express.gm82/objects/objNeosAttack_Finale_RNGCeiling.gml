#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0;

timer = 0;
duration = 15;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if timer < duration
{
    image_alpha += 1 / duration;
    timer += 1;
}
