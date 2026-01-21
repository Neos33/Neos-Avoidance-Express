#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sys = part_system_create();

typ = part_type_create();
part_type_alpha2(typ, 0, 1);
part_type_life(typ, 50, 200);
part_type_blend(typ, true);

part_type_direction(typ, 0, 359, 0, 0);
part_type_speed(typ, 8, 16, 1, 0);
part_type_orientation(typ, 0, 0, 0, 0, true);
part_type_scale(typ, 2, .1);
part_type_shape(typ, pt_shape_sphere);
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Event user 0
event_user(0);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(player) exit;
    part_particles_create(sys,player.x,player.y,typ,3);
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Event user 0
event_user(0);
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Destroy particles
part_system_clear(sys);
part_type_destroy(typ);
part_system_destroy(sys);
