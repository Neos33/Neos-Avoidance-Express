///scrNeosCreateAttack_2(amount, angle_offset, angle_speed, radius, start_pos, speed);

var _amount, _angle_offset, _angle_speed, _radius, _start_pos, _speed;
_amount = argument[0];
_angle_offset = argument[1];
_angle_speed = argument[2];
_radius = argument[3];
_start_pos = argument[4];
_speed = argument[5];


var i, _obj;
for (i = 0; i < 360; i += 360 / _amount)
{
    _obj = instance_create(400, 304, objNeosAttack_2);
    _obj . angle = i + _angle_offset;
    _obj . radius = _radius;
    _obj . angle_speed = _angle_speed;
    _obj . xs = _start_pos;
    _obj . xs_speed = _speed;
}
