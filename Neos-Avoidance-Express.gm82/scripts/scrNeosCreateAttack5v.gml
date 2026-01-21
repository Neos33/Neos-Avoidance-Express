///scrNeosCreateAttack5v(amount, angle_offset, radius, start_pos, speed);

var _amount, _angle_offset, _radius, _start_pos, _speed;
_amount = argument[0];
_angle_offset = argument[1];
_radius = argument[2];
_start_pos = argument[3];
_speed = argument[4];


var i, _obj;
for (i = 0; i < 360; i += 360 / _amount)
{
    _obj = instance_create(400, 304, objNeosAttack_5v);
    _obj . angle = i + _angle_offset;
    _obj . radius = _radius;
    _obj . ys = _start_pos;
    _obj . ys_speed = _speed;
}
