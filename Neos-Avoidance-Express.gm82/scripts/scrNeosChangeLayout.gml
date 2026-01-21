///scrNeosChangeLayout(layout_object, left, top, right, bottom, ease, duration);

// Arguments
var _layout_object, _left, _top, _right, _bottom, _ease, _duration;
_layout_object = argument[0];
_left = argument[1];
_top = argument[2];
_right = argument[3];
_bottom = argument[4];
_ease = argument[5];
_duration = argument[6];

// Exit if the object is not even in the room
if !instance_exists(_layout_object)
    return -1;

with _layout_object
{
    if left != _left     { scrNeosTweenFire(id, _ease,   "left",   left,   _left, 0, _duration, false); }
    if top != _top       { scrNeosTweenFire(id, _ease,    "top",    top,    _top, 0, _duration, false); }
    if right != _right   { scrNeosTweenFire(id, _ease,  "right",  right,  _right, 0, _duration, false); }
    if bottom != _bottom { scrNeosTweenFire(id, _ease, "bottom", bottom, _bottom, 0, _duration, false); }
}
