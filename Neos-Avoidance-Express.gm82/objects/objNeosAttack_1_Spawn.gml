#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;
image_xscale = .5;
image_yscale = image_xscale;

spiral = 0;
spiral_speed = 25;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var _dir, _rev;
_dir = 0;
_rev = 1;

if x>400
{
    _dir = 180;
    _rev = -1;
}
var _dir_final, _spd;
_dir_final = _dir+spiral*_rev;
_spd = 10;

for (i=0; i<360; i+=360/4)
{
    var _inst;
    _inst = instance_create_moving(x, y, objNeosAttack_1_Spiral, _spd, _dir_final + i); //+irandom_range(-20,20));
    _inst . image_angle = _dir_final + i;
    _inst . image_blend = c_red;
}
/*
var _inst;
_inst = instance_create_moving(x, y, object794, _spd, _dir_final); //+irandom_range(-20,20));
_inst . image_angle = _dir_final;
_inst . image_blend = c_red;

_dir_final += 360 / 4;
_inst = instance_create_moving(x, y, object794, _spd, _dir_final); //+irandom_range(-20,20));
_inst . image_angle = _dir_final;
_inst . image_blend = c_red;

_dir_final += 360 / 4;
_inst = instance_create_moving(x, y, object794, _spd, _dir_final); //+irandom_range(-20,20));
_inst . image_angle = _dir_final;
_inst . image_blend = c_red;

_dir_final += 360 / 4;
_inst = instance_create_moving(x, y, object794, _spd, _dir_final); //+irandom_range(-20,20));
_inst . image_angle = _dir_final;
_inst . image_blend = c_red;
*/
alarm[0] = 15;

spiral += spiral_speed;
image_xscale = 0.75;
image_yscale = image_xscale;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
splitobject(8, 6, deliciousFruit, 0, false);

alarm[1] = 20;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_xscale > 0.5
{
    image_xscale -= 1/20;
}
else
{
    image_xscale = 0.5;
}

image_yscale = image_xscale;
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
