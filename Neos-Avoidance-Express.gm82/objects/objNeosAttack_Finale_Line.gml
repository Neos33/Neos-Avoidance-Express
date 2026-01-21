#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;

timer = 0;
duration_in = 100;
duration_out = duration_in;
radiusTarget = 0;
angleTarget = 0;
angle = 90;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch status
{
    case 0:
        if timer <= duration_in
        {
            var _tween;
            _tween = script_execute(EaseOutQuad, timer, 0, 1, duration_in);
            x = xstart + lengthdir_x(radiusTarget*_tween, angle+angleTarget*_tween);
            y = ystart + lengthdir_y(radiusTarget*_tween, angle+angleTarget*_tween);

            timer += 1;
        }
        else
        {
            timer = 0;
            status = 1;
        }
    break;
    case 1:
        if timer <= duration_out
        {
            var _tween;
            _tween = 1 - script_execute(EaseInQuad, timer, 0, 1, duration_out);
            x = xstart + lengthdir_x(radiusTarget*_tween, angle+angleTarget);
            y = ystart + lengthdir_y(radiusTarget*_tween, angle+angleTarget);

            timer += 1;
        }
        else
        {
            instance_destroy();
        }
    break;
}

image_xscale = (608 - y) / 608;
image_yscale = image_xscale;
