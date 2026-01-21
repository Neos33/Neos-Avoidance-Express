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
        current_value_x = value_start_x + tween * value_destination_x;
        current_value_y = value_start_y + tween * value_destination_y;
    }
    else
    {
        var _factor_value_x, _factor_value_y;
        _factor_value_x = value_destination_x - value_start_x;
        _factor_value_y = value_destination_y - value_start_y;

        current_value_x = value_start_x + tween * _factor_value_x;
        current_value_y = value_start_y + tween * _factor_value_y;
    }

    // Apply changes to the onwer's variable
    view_xview[view_index] = current_value_x;
    view_yview[view_index] = current_value_y;
}
else // Tween finished, destroy this instance
{
    view_xview[view_index] = round(current_value_x);
    view_yview[view_index] = round(current_value_y);
    instance_destroy();
    exit;
}
