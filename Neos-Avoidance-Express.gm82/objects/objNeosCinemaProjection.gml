#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
y_off = 256;
//y_off = 304;
scrNeosTweenFire(id, EaseOutSine, "y_off", y_off, 0, 0, 50, false);
scrNeosTweenFire(id, EaseOutSine, "image_alpha", 0, 1, 0, 50, false);

surf_eraser = -1;

distance_eraser = 0;
scrNeosTweenFire(id, EaseOutSine, "distance_eraser", distance_eraser, 304 - 64, 0, 50, false);
//scrNeosTweenFire(id, EaseOutSine, "distance_eraser", distance_eraser, 304 - 192, 0, 50, false);
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// event_user(0)
event_user(0);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !surface_exists(surf_eraser)
    exit;


if y_off == 0
{
    surface_free(surf_eraser); // Transition done, destroy the surface
}
#define Other_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// event_user(0)
event_user(0);
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// event_user(0)
event_user(0);
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Free surface from memory
if surface_exists(surf_eraser)
    surface_free(surf_eraser);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y_off != 0
{
    if !surface_exists(surf_eraser)
        surf_eraser = surface_create(800, 608);


    surface_set_target(surf_eraser);

    draw_clear(c_black);

    with objNeosBackgroundDrawer
    {
        //if !visible
            event_user(0);
    }
    with player
    {
        if !visible
            draw_self();
    }

    draw_set_blend_mode(bm_subtract);
    draw_sprite_ext(sprNeosPoint2x2, 0, 400, 304, 400, distance_eraser, 0, c_black, 1);
    draw_set_blend_mode(bm_normal);

    surface_reset_target();

    draw_surface(surf_eraser, 0, 0);
}



var _col;
//_col = c_purple;
//_col = make_color_rgb(108,60,128);
_col = make_color_rgb(52, 29, 63);

draw_sprite_ext(sprNeosPoint1x1, 0, 0, -y_off, 800, 64, 0, _col, image_alpha);
draw_sprite_ext(sprNeosPoint1x1, 0, 0, 608-64+y_off, 800, 64, 0, _col, image_alpha);

draw_sprite_ext(sprNeosGradient, 0, 400, 64 + y_off, .1, 401, -90, _col, image_alpha);
draw_sprite_ext(sprNeosGradient, 0, 400, 608-64 - y_off, .1, 401, 90, _col, image_alpha);

draw_sprite_ext(sprNeosGradient, 0, 400, 64 + y_off, .25, 401, 90, _col, image_alpha);
draw_sprite_ext(sprNeosGradient, 0, 400, 608-64 - y_off, .25, 401, -90, _col, image_alpha);
