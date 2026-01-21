#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
// Internal
timer = 0;
duration = 1;

easeScript = EaseLinear;


// Instance workaround
relative_mode = false;
view_index = 0;

value_start_x = 0;
value_start_y = 0;
value_destination_x = 0;
value_destination_y = 0;

current_value_x = value_start_x;
current_value_y = value_start_y;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if timer < duration
{
    timer += 1;

    //(time,start,end,duration)
    var tween;
    tween = script_execute(easeScript, timer, 0, 1, duration);
    if relative_mode
    {
        current_value_w = value_start_w + tween * value_destination_w;
        current_value_h = value_start_h + tween * value_destination_h;
    }
    else
    {
        var _factor_value_w, _factor_value_h;
        _factor_value_w = value_destination_w - value_start_w;
        _factor_value_h = value_destination_h - value_start_h;

        current_value_w = value_start_w + tween * _factor_value_w;
        current_value_h = value_start_h + tween * _factor_value_h;
    }

    // Apply changes to the onwer's variable
    view_wview[view_index] = current_value_w;
    view_hview[view_index] = current_value_h;
}
else // Tween finished, destroy this instance
{
    view_wview[view_index] = round(current_value_w);
    view_hview[view_index] = round(current_value_h);
    instance_destroy();
    exit;
}
