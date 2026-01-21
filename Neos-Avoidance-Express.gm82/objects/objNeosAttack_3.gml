#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
angle = 0;
angle_target = 0;

radius = 0;
duration = 300;

image_speed = 0;

status = "Circle";

sprite_index = sprNeosCherrySolid;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch status
{
    case "Circle":
        x = xstart + lengthdir_x(radius, angle);
        y = ystart + lengthdir_y(radius, angle);

        angle += (angle_target - angle) * (1/duration);
        image_blend = merge_color(c_white, target_color, image_xscale);

        if image_xscale < 1
        {
            image_xscale += 0.05;
            image_yscale = image_xscale;
        }

    break;
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprNeosCherrySolidGlow,0,x,y,image_xscale,image_yscale,image_angle,c_white,0.4);
draw_self();
