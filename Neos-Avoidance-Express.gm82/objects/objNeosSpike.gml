#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//image_yscale = 0;
timer = 0;
duration = 50;
shrink = false;

image_alpha = 0.75;
image_speed = 0;


alarm[0] = duration;
mask_index = sprNeosNothing; // no mask
offset = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Now they can kill you, watch out
start_done = true;
image_alpha = 1;
mask_index = sprite_index;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !shrink
{
    if timer < duration
    {
        image_yscale = EaseOutElastic(timer, 0, 1, duration);
        image_blend = merge_color(c_red, c_black, EaseOutQuad(timer, 0, 1, duration));
        timer += 1;
    }
}
else
{
    if image_yscale > 0
        image_yscale -= 1/duration;
    else
        instance_destroy();
}

if instance_exists(global.Neos_layout_object_id) and start_done
    y = global.Neos_layout_object_id.bottom+offset;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Say hi
