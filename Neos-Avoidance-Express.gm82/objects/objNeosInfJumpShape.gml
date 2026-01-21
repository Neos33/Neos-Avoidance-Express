#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
radius = 128;
angle = 0;
angle_target = 180;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = xstart + lengthdir_x(radius, angle);
y = ystart + lengthdir_y(radius/2, angle*2);

angle += (angle_target - angle) * 0.1;

if image_alpha <= 0
    instance_destroy();
