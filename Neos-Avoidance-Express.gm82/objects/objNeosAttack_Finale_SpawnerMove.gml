#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;

alarm[0] = 5;

spiral = irandom(50);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Spawn fruits
var _inst;
_inst = instance_create_moving(x, y, objNeosAttack_Finale_RNGGravity, 4, spiral); // Left
_inst . sprite_index = sprNeosCherrySolid;
_inst . image_blend = make_color_hsv_standard(spiral, 80, 100);
_inst . image_xscale = 0.5;
_inst . image_yscale = _inst . image_xscale;

_inst = instance_create_moving(x, y, objNeosAttack_Finale_RNGGravity, 4, 180 - spiral); // Right
_inst . sprite_index = sprNeosCherrySolid;
_inst . image_blend = make_color_hsv_standard(180 - spiral, 80, 100);
_inst . image_xscale = 0.5;
_inst . image_yscale = _inst . image_xscale;

alarm[0] = 6;

spiral += 50;
