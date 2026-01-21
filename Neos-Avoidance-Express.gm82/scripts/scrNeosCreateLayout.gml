///scrNeosCreateLayout(layout_object, left, top, right, bottom);

// Arguments
var _layout_object, _left, _top, _right, _bottom;
_layout_object = argument[0];
_left = argument[1];
_top = argument[2];
_right = argument[3];
_bottom = argument[4];

var _layout;
_layout = instance_create(0, 0, _layout_object);
_layout . left = _left;
_layout . top = _top;
_layout . right = _right;
_layout . bottom = _bottom;

instance_create(0,0,objNeosDrawLayoutOutline);

return _layout;
