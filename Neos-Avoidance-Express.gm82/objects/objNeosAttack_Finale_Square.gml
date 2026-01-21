#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
angle = 0;
radius = 0;
radius_base = 0;
angle_base = 0;

image_speed = 0;

alarm[0] = 25;

depth = -4;

status = "Reunite";

mask_index = sprNeosNothing;

timer = 0;
duration = 30;
target_color = c_white;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//visible = true;
depth = -9;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch status
{
    case "Reunite":
        x = xstart + lengthdir_x(radius_base + radius, angle);
        //y = ystart + lengthdir_y(32, angle);
        image_xscale = 0.75 + lengthdir_x(0.25, angle+90);
        image_yscale = image_xscale;

        if image_xscale >= 0.75
        {
            visible = true;
            depth = -9;
            mask_index = sprite_index; // Enable hitbox
        }
    break;

    case "Freedom":
        if timer <= duration
        {
            image_blend = merge_color(c_white, target_color, timer / duration);
            timer += 1;
        }

        if outside_room()
            instance_destroy();

        //x = modwrap(x, 0, 800);
        //y = modwrap(y, 0, 608);
        speed += gravi;
        //angle += angle_speed;
    break;
}
