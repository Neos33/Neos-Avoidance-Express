#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
timer = 0;
duration = 15;

image_speed = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if timer < duration
{
    image_blend = merge_color(c_white, c_red, timer/duration);
    timer += 1;
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Destroy
instance_destroy();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self();
draw_sprite_ext(sprNeosCherryTrailBright, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5);
