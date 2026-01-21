///scrNeosTweenCameraZoom(easeMode, view_select, startW, startH, targetW, targetH, step, duration, relative);
var ease_mode, view_select, begin_value_w, begin_value_h, finish_value_w, finish_value_h, step_tween, duration_tween, relative;
ease_mode = argument[0];
view_select = argument[1];
begin_value_w = argument[2];
begin_value_h = argument[3];
finish_value_w = argument[4];
finish_value_h = argument[5];
step_tween = argument[6];
duration_tween = argument[7];
relative = argument[8];

var tweenObj;
tweenObj = instance_create(x, y, objNeosEaseCameraZoomShenanigans);
tweenObj . easeScript = ease_mode;
tweenObj . view_index = view_select;

tweenObj . value_start_w = begin_value_w;
tweenObj . value_start_h = begin_value_h;
tweenObj . value_destination_w = finish_value_w;
tweenObj . value_destination_h = finish_value_h;

tweenObj . timer = step_tween;
tweenObj . duration = duration_tween

tweenObj . relative_mode = relative;
