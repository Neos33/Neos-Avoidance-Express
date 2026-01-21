#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();
image_speed = 0;

pointX = x;
pointY = y;
radius = 32;
angle = 0;
angle_speed = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();
x = pointX + lengthdir_x(radius, angle);
y = pointY + lengthdir_y(radius, angle);
angle += angle_speed;
