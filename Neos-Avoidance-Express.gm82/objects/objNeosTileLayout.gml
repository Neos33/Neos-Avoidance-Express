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

prev_x = x;
prev_y = y;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Free surface from memory
surface_free(global.Neos_miniScreenFocus[0]);
surface_free(global.Neos_miniScreenFocus[1]);
global.Neos_miniScreenFocus[0] = -1;
global.Neos_miniScreenFocus[1] = -1;

// Destroy blocks
instance_destroy_id(block_left);
instance_destroy_id(block_top);
instance_destroy_id(block_right);
instance_destroy_id(block_bottom);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//depth = irandom_range(-10000,10000)
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if wave
{
    event_user(0);
}

var _l, _t, _r, _b;
_l = floor(left - 32);
_t = floor(top - 32);
_r = floor(right);
_b = floor(bottom);


with block_left x = _l;
with block_top y = _t;
with block_right x = _r;
with block_bottom y = _b;

var _prev_x, _prev_y;
_prev_x = abs(xprevious - x);
_prev_y = abs(prev_y - y);



/*
with block_left hspeed = _l-x;
with block_top vspeed = _t-y;
with block_right hspeed = _r-x;
with block_bottom vspeed = _b- y;
*/
with player
{
    x = clamp(x, _l + 32+6, _r-6);
    y = clamp(y, _t + 32+_prev_y, _b-9);

    // Extra check to prevent getting stuck in the ceiling (I hate collision blocks jank D:)
    if bbox_top <= _t + 32
    {
        y = _t + 32 + 12;
    }
}

timer += 1;

prev_y = y;
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Free surface from memory
surface_free(global.Neos_miniScreenFocus[0]);
surface_free(global.Neos_miniScreenFocus[1]);
global.Neos_miniScreenFocus[0] = -1;
global.Neos_miniScreenFocus[1] = -1;

// Destroy blocks
instance_destroy_id(block_left);
instance_destroy_id(block_top);
instance_destroy_id(block_right);
instance_destroy_id(block_bottom);
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Oscillate
var _xl, _xr, _oscillator;

_oscillator = 0.5 + lengthdir_x(0.5, angle);
_xl = lerp(64, 800 - 160, _oscillator);
_xr = lerp(160, 800 - 64, _oscillator);
angle += 2;

left = _xl;
right = _xr;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// 1st surface, inside layout
if !surface_exists(global.Neos_miniScreenFocus[0])
    global.Neos_miniScreenFocus[0] = surface_create(800, 608);



surface_set_target(global.Neos_miniScreenFocus[0]);
draw_clear_alpha(c_black, 0);
//draw_sprite_ext(sprNeosPoint1x1, 0, left, top, right - left, bottom - top, 0, c_black, 0.2);

with objNeosPlayerSpectrum
    event_user(0);


draw_set_color(c_black);

with block
    scrNeosDrawNineSlice(bNeosTilesOutline, x, y, x + 32 * image_xscale, y + 32 * image_yscale);

with objNeosBlock2
{
    scrNeosDrawNineSlice(bNeosTilesOutline, x, y, x + 32 * image_xscale, y + 32 * image_yscale);
}

draw_set_color(c_white);

// Test
//draw_sprite_ext(sprNeosPoint1x1, 0, mouse_x+32, mouse_y, 32, 32, 0, c_yellow, 0.8);

with objNeosSpike
    draw_self();

with objNeosSpikeWall
    draw_self();

with objNeosZoneMark
    event_user(0);

with spikeUp
    draw_self();

with objNeosDrawerKillerInside
{
    if !visible
        draw_self();
}


with objNeosAttack_2
{
    //if (angle > 270 and angle < 360) or angle < 90
    if depth > -10 and depth < -5
        draw_self();
}


with objNeosAttack_Finale_Square
{
    if depth == -9 and status != "Freedom"
        draw_self();
}

surface_reset_target();


draw_surface_part(global.Neos_miniScreenFocus[0], left, top, right - left, bottom - top, left, top);
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// 2nd surface, outside layout
if !surface_exists(global.Neos_miniScreenFocus[1])
    global.Neos_miniScreenFocus[1] = surface_create(800, 608);

surface_set_target(global.Neos_miniScreenFocus[1]);

draw_clear_alpha(c_black, 0);

// Test
//draw_sprite_ext(sprNeosPoint1x1, 0, mouse_x-32, mouse_y, 32, 32, 0, c_red, 0.8);

//with object762 draw_self();
with objNeosAttack_2 draw_self();
with objNeosAttack_Finale_Square
{
    if status != "Freedom"
        draw_self();
}



surface_reset_target();

// Vertical
draw_surface_part(global.Neos_miniScreenFocus[1], 0, 0, 800, top, 0, 0);
draw_surface_part(global.Neos_miniScreenFocus[1], 0, bottom, 800, 608 - bottom, 0, bottom);

// Horizontal
draw_surface_part(global.Neos_miniScreenFocus[1], 0, top, left, bottom - top, 0, top);
draw_surface_part(global.Neos_miniScreenFocus[1], right, top, 800 - right, bottom - top, right, top);

/*
draw_surface_part(global.Neos_miniScreenFocus[1], 0, top, 32, bottom - top, 0, top);
draw_surface_part(global.Neos_miniScreenFocus[1], 800-32, top, 32, bottom - top, 800-32, top);
