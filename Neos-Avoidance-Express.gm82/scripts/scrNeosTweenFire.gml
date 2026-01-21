///scrNeosTweenFire(target_owner, ease, value_as_string, startValue, targetValue, step_offset, duration, relative);
var target_owner, ease_mode, value_string, begin_value, finish_value, step_tween, duration_tween, relative_mode;
target_owner = argument[0]
ease_mode = argument[1];
value_string = argument[2];
begin_value = argument[3];
finish_value = argument[4];
step_tween = argument[5];
duration_tween = argument[6];
relative_mode = argument[7];

var tweenObj;
with target_owner
{
    tweenObj = instance_create(x, y, objNeosEaseCommonShenanigans);
    tweenObj . owner = id;
    tweenObj . parent_value = value_string;
    tweenObj . easeScript = ease_mode;

    tweenObj . value_start = begin_value;
    tweenObj . value_destination = finish_value;

    tweenObj . timer = step_tween;
    tweenObj . duration = duration_tween
    tweenObj . relative_mode = relative_mode;
}

return tweenObj;
