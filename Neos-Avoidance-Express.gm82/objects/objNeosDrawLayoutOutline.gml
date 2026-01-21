#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
depth = -6;

alpha = 0;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(global.Neos_layout_object_id) exit;


var _l, _t, _r, _b;
_l = global.Neos_layout_object_id.left;
_t = global.Neos_layout_object_id.top;
_r = global.Neos_layout_object_id.right;
_b = global.Neos_layout_object_id.bottom;

_off = global.Neos_layout_object_id.offset;

draw_set_color(c_black);
scrNeosDrawNineSlice(bNeosTilesOutline, _l-_off, _t-_off, _r+_off, _b+_off);
draw_set_color(c_white);


var _center_x, _center_y;
_center_x = _l + (_r - _l) / 2;
_center_y = _t + (_b - _t) / 2;
draw_sprite_ext(sprNeosLightOutline, 0, _center_x, _t - _off, (_center_x - _l) / 62, _off, 0, image_blend, alpha);
draw_sprite_ext(sprNeosLightOutline, 0, _center_x,        _b, (_center_x - _l) / 62, _off, 0, image_blend, alpha);

draw_sprite_ext(sprNeosLightOutline, 0, _l - _off, _center_y, (_center_y - _t) / 62, _off, 90, image_blend, alpha);
draw_sprite_ext(sprNeosLightOutline, 0,        _r, _center_y, (_center_y - _t) / 62, _off, 90, image_blend, alpha);
