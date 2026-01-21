///scrNeosTweenColors(target_instance, easeMode, startValue, targetValue, step, duration);
var target_owner, ease_mode, begin_value, finish_value, step_tween, duration_tween;
target_owner = argument[0]
ease_mode = argument[1];
begin_value = argument[2];
finish_value = argument[3];
step_tween = argument[4];
duration_tween = argument[5];

with target_owner
{
    var tweenObj;
    tweenObj = instance_create(x, y, objNeosEaseColorShenanigans);
    tweenObj . owner = id;
    tweenObj . easeScript = ease_mode;

    tweenObj . value_start = begin_value;
    tweenObj . value_destination = finish_value;

    tweenObj . timer = step_tween;
    tweenObj . duration = duration_tween;
}
