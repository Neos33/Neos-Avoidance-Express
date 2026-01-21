#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
scale_factor = 0.05;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_xscale > 0
{
    image_xscale -= scale_factor;
    image_yscale = image_xscale;
}
else
    instance_destroy();
