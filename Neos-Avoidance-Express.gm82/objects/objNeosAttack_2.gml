#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
angle = 0;
angle_speed = 1;
image_speed = 0;

scale_offset = -90;

depth = -5;

depth_base = depth;
depth_offset = -90;

radius = 64

xs = 0;
xs_speed = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = xs + lengthdir_x((xs-400)/8, angle);
y = ystart + lengthdir_y(radius, angle);
angle += angle_speed;
angle = angle mod 359;
xs += xs_speed;

image_xscale = 0.75 + lengthdir_y(0.25, angle + scale_offset);
image_yscale = image_xscale;

if y > yprevious
{
    depth = -4; // Behind
    //image_blend = c_aqua; DEBUG
    image_blend = c_black;
}
else
{
    depth = -9; // Front
    image_blend = c_black;
}

if place_meeting(x, y, player) and depth == -9
{
    with (player) killPlayer();
}




//depth = depth_base - lengthdir_y(10, angle + depth_offset);

//image_blend = make_color_hsv(depth, 200, 255);
/*
if (angle > 270 and angle < 360) or angle < 90
    image_blend = c_blue
else
    image_blend = c_red
