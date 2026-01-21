#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
// Internal
timer = 0;
owner = noone;
duration = 1;

easeScript = EaseLinear;


// Instance workaround
relative_mode = false;

value_start = 0;
value_destination = 0;

current_value = value_start;
parent_value = "";
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(owner) or owner == noone
{
    instance_destroy();
    exit;
}

var _tween, _destroy;
_destroy = false;

if timer < duration
{
    _tween = script_execute(easeScript, timer, 0, 1, duration);
}
else
{
    _tween = script_execute(easeScript, duration, 0, 1, duration);
    _destroy = true;
}


//(time,start,end,duration)
if relative_mode
{
    current_value = value_start + _tween * value_destination;
}
else
{
    var _factor_value;
    _factor_value = value_destination - value_start;
    current_value = value_start + _tween * _factor_value;
}

// Apply changes to the owner's variable
var _parent, _final_value;
_parent = parent_value;
_final_value = current_value;

with owner
    variable_local_set(_parent, _final_value);

timer += 1;

if _destroy
{
    with owner
    {
        if image_alpha == 0 instance_destroy();
    }
    instance_destroy();
}
