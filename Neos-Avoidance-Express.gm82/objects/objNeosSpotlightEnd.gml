#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
spotlight_surf = -1;
radius = 500;

depth = -5000;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Free surface from memory
surface_free(spotlight_surf);
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Free surface from memory
surface_free(spotlight_surf);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !surface_exists(spotlight_surf)
    spotlight_surf = surface_create(800, 608);


surface_set_target(spotlight_surf);
draw_clear_alpha(c_black, 1);
draw_set_blend_mode(bm_subtract);

draw_circle(400, 304, radius, false);

/*with objBlock
{
    draw_self();
}*/

draw_set_blend_mode(bm_normal)
surface_reset_target();

draw_surface(spotlight_surf, 0, 0);
