#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
offset = 4;
left = -1;
top = -1;
right = -1;
bottom = -1;
//instance = liftblock;
instance = objNeosBlock;

block_left = instance_create(left - 32, 0, instance);
block_left . image_yscale = 19;

block_top = instance_create(0, top - 32, instance);
block_top . image_xscale = 25;

block_right = instance_create(right, 0, instance);
block_right . image_yscale = 19;

block_bottom = instance_create(0, bottom, instance);
block_bottom . image_xscale = 25;

with instance
{
    visible = false;
}

global.Neos_layout_object_id = id;

depth = -5;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Destroy blocks
instance_destroy_id(block_left);
instance_destroy_id(block_top);
instance_destroy_id(block_right);
instance_destroy_id(block_bottom);
/*
instance_destroy_id(block_left);
instance_destroy_id(block_top);
instance_destroy_id(block_right);
instance_destroy_id(block_bottom);
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//left += sin(timer/10) * 16;
//right += -sin(timer/10) * 16;

//top += -sin(timer/10) * 4;
//bottom += sin(timer/10) * 4;

var _l, _t, _r, _b;
_l = left - 32;
_t = top - 32;
_r = right;
_b = bottom;


with block_left x = _l;
with block_top y = _t;
with block_right x = _r;
with block_bottom y = _b;

with player
{
    x = clamp(x, _l + 32+6, _r-6);
    y = clamp(y, _t + 32, _b-9);
}

timer += 1;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//scrNeosDrawNineSlice(bNeosTilesOutline, left-offset, top-offset, right+offset, bottom+offset);
/*
draw_set_color(c_green);

draw_set_halign(fa_center);

// Vertical
draw_set_valign(fa_bottom);
draw_text(400, bottom - 16, "bottom: " +string(bottom));

draw_set_valign(fa_top);
draw_text(400, top + 16, "top: " +string(top));

draw_set_valign(fa_middle);

// Horizontal
draw_set_halign(fa_right);
draw_text(right - 16, 304, "right: " +string(right));

draw_set_halign(fa_left);
draw_text(left + 16, 304, "left: " +string(left));


draw_set_color(c_white)
draw_set_valign(fa_top);
