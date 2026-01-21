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

value_start = 0;
value_destination = 0;

current_value = value_start;
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
    //(time,start,end,duration)
    _tween = script_execute(easeScript, timer, 0, 1, duration);
}
else
{
    _tween = script_execute(easeScript, duration, 0, 1, duration);
    _destroy = true;
}

current_value = merge_color(value_start, value_destination, _tween);


// Apply changes to the onwer's variable
owner.image_blend = current_value; 
timer += 1;

if _destroy // Tween finished, destroy this instance
{
    instance_destroy();
    exit;
}
