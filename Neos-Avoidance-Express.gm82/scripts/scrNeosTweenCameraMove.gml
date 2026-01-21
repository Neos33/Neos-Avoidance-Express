///scrNeosTweenCameraMove(easeMode, view_select, startX, startY, targetX, targetY, step, duration, relative);
var ease_mode, view_select, begin_value_x, begin_value_y, finish_value_x, finish_value_y, step_tween, duration_tween, relative;
ease_mode = argument[0];
view_select = argument[1];
begin_value_x = argument[2];
begin_value_y = argument[3];
finish_value_x = argument[4];
finish_value_y = argument[5];
step_tween = argument[6];
duration_tween = argument[7];
relative = argument[8];

var tweenObj;
tweenObj = instance_create(x, y, objNeosEaseCameraPositionShenanigans);
tweenObj . easeScript = ease_mode;
tweenObj . view_index = view_select;

tweenObj . value_start_x = begin_value_x;
tweenObj . value_start_y = begin_value_y;
tweenObj . value_destination_x = finish_value_x;
tweenObj . value_destination_y = finish_value_y;

tweenObj . timer = step_tween;
tweenObj . duration = duration_tween

tweenObj . relative_mode = relative;
