#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_blend = c_red;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mouse_check_button_pressed(mb_left)
{
    //instance_create_moving(mouse_x, mouse_y, object766, 6, random(360));

    /*var _s, _a;
    _s = irandom_range(-4, 4);
    _a = irandom_range(20, 200);
    var _amount;
    _amount = 32;

    for (i=0; i<_amount; i+=1)
    {
        a = instance_create(x, y, objNeosAttack_6);
        a . angle = 360 / _amount * i;
        a . angle_speed = _s;

        a . alarm[0] = _a;

        a . angle_direction = 0;
        if i == 0
        a . image_blend = c_red;
    };*/

    //instance_create(mouse_x,mouse_y,object786);

    //instance_create_moving(mouse_x, mouse_y, object787, 10, 270, 0.2, 90);
    /*
    var _temp, _temp2;
    _temp = irandom_range(-32, 0);
    _temp2 = irandom_range(-10, 10);

    var _total;
    _total = 60;

    var _y;
    _y = 608;
    for (i=_temp; i<800; i+=96)
    {
        for (k=1; k<=_total; k+=1)
        {
            a = instance_create(i, _y+32, object799);
            a . radiusTarget = (_y+32) * k/_total;
            a . angleTarget = _temp2;
            a . angle = 90;
            a . duration = 60;
        };

    };*/
    /*for (i=0; i<6; i+=1)
    {
        //for (k=0; k<6; k+=1)
        {
            var j;
         //   j = k - 2;
            a = instance_create(mouse_x+5*32, mouse_y, object800);
            a . radius = i*32;
            //a . radius_base = a . radius;
            a . angle = 360 / 6 * i;

            a = instance_create(mouse_x-5*32, mouse_y, object800);
            a . radius = i*32;
            //a . radius_base = a . radius;
            a . angle = 360 / 6 * i;
        };



    };
    */
    //event_user(1);
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
for (i=0; i<6; i+=1)
    {
        for (k=0; k<6; k+=1)
        {
            var j;
            j = i;
            //if i == 0 and (k == 0 or k == 5)
            if (k == 0 or k == 5)
            {
                a = instance_create(mouse_x, mouse_y+k*32, object800);
                a . radius = 32*6;
                a . angle = 360 / 6 * i / 6 + 45+18;
                with a scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180, 0, 200, true);
                continue
            }
            {
                a = instance_create(mouse_x, mouse_y+k*32, object800);
                a . radius = 32*6;
                a . angle = 360 / 6 * 0 / 6 + 45+18;
                if i < 3
                with a scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180, 0, 200, true);
                else
                with a scrNeosTweenFire(id, EaseOutCubic, "angle", angle+90, -180, 0, 200, true);

                //continue;
            }
                /*a = instance_create(mouse_x, mouse_y+k*32, object800);
                a . radius = 32*6;
                //a . radius_base = a . radius;
                a . angle = 360 / 6 * i / 6 + 45;
                */
            /*
            a = instance_create(mouse_x-i*32, mouse_y, object800);
            a . radius = 128;
            //a . radius_base = a . radius;
            a . angle = 360 / 6 * i / 6;
        };
    }
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
var _total;
_total = 6;
for (i=0; i<_total; i+=1)
    {
        for (k=0; k<_total; k+=1)
        {
            if (k == 0 or k == _total-1)
            {
                var _point;
                _point = point_direction(mouse_x, mouse_y, lengthdir_x(32,32),32);

                a = instance_create(mouse_x, mouse_y+k*32, object800);
                a . radius = 32*(_total-1);
                a . angle = (360 / _total * modwrap(i,0,_total/2) + 32);
                if i < _total/2
                {

                    with a scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180, 0, 200, true);
                }
                else
                {
                    //a . angle += 180;
                    with a scrNeosTweenFire(id, EaseOutCubic, "angle", angle, -180, 0, 200, true);
                }
            }
            else
            {
                // Walls
                if i == 0 or i == _total-1
                {
                    a = instance_create(mouse_x, mouse_y+k*32, object800);
                    a . radius = 32*(_total-1);
                    a . angle = (360 / _total * max(0, i-1));
                    if i == 0
                    {
                        //a . angle += 180;
                        with a scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180, 0, 200, true);
                    }
                    else
                    {
                        //a . angle += 180;
                        with a scrNeosTweenFire(id, EaseOutCubic, "angle", angle, -180, 0, 200, true);
                    }
                }
            }
        }
    }
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
var _total;
_total = 8;

var _dura;
_dura = 50;
for (i=0; i<_total/2; i+=1)
{
    for (k=0; k<_total; k+=1)
    {
        if (k == 0 or k == _total-1)
        {
            var _off;
            _off = (360 / (_total/2));

            a = instance_create(mouse_x, mouse_y+k*32, object800);
            a . radius = 32 * (_total) / 2;
            //a . angle = (360 / _total * i);
            //a . angle = 90 + 16 * i;
            a . angle = 90 + ((360 / (_total/2))) * (i+1) / (_total/2);
            with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180-_off, 0, _dura, true);}

            a = instance_create(mouse_x, mouse_y+k*32, object800);
            a . radius = 32 * (_total) / 2;
            //a . angle = 90 - 16 * i;
            a . angle = 90 - ((360 / (_total/2))) * (i+1) / (_total/2);
            with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, -180+_off, 0, _dura, true);}

        }
        else
        {
            // Walls
            //if i == 0 or i == _total-1
            if i == 0
            {
                a = instance_create(mouse_x, mouse_y+k*32, object800);
                a . radius = 32*(_total) / 2;
                //a . angle = 90 + 16 * i;
                a . angle = 90 + ((360 / (_total/2))) * (i+1) / (_total/2);
                with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180-_off, 0, _dura, true);}

                a = instance_create(mouse_x, mouse_y+k*32, object800);
                a . radius = 32*(_total) / 2;
                //a . angle = 90 - 16 * i;
                a . angle = 90 - ((360 / (_total/2))) * (i+1) / (_total/2);
                with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, -180+_off, 0, _dura, true);}
            }
        }
    }
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
var _total, _dura, _off, _rad;
        _total = 11;
        _dura = 50;
        _off = (360 / (_total/2));
        _rad = 32 * (_total);

        for (i=0; i<_total/2; i+=1)
        {
            for (k=0; k<_total; k+=1)
            {
                if (k == 0 or k == _total-1)
                {
                    a = instance_create(400, 304+k*32 - _rad / 2 + 16, object800);
                    a . radius = _rad / 2 + 32;
                    //a . angle = (360 / _total * i);
                    //a . angle = 90 + 16 * i;
                    a . angle = 90 + ((360 / (_total/2))) * (i+1) / (_total/2);
                    a . alarm[0] = _dura / 2;
                    with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180-_off, 0, _dura, true);}

                    a = instance_create(400, 304+k*32 - _rad / 2 + 16, object800);
                    a . radius = _rad / 2 + 32;
                    //a . angle = 90 - 16 * i;
                    a . angle = 90 - ((360 / (_total/2))) * (i+1) / (_total/2);
                    a . alarm[0] = _dura / 2;
                    with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, -180+_off, 0, _dura, true);}

                }
                else
                {
                    // Walls
                    if i == 0
                    {
                        a = instance_create(400, 304+k*32 - _rad / 2 + 16, object800);
                        a . radius = _rad / 2 + 32;
                        //a . angle = 90 + 16 * i;
                        a . angle = 90 + ((360 / (_total/2))) * (i+1) / (_total/2);
                        a . alarm[0] = _dura / 2;
                        with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180-_off, 0, _dura, true);}

                        a = instance_create(400, 304+k*32 - _rad / 2 + 16, object800);
                        a . radius = _rad / 2 + 32;
                        //a . angle = 90 - 16 * i;
                        a . angle = 90 - ((360 / (_total/2))) * (i+1) / (_total/2);
                        a . alarm[0] = _dura / 2;
                        with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, -180+_off, 0, _dura, true);}
                    }
                }
            }
        }
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

var _total;
_total = 8;

var _dura;
_dura = 50;
for (i=0; i<_total/2; i+=1)
{
    for (k=0; k<_total; k+=1)
    {
        if (k == 0 or k == _total-1)
        {
            var _off;
            _off = 0;

            a = instance_create(mouse_x + 16 + i*32, mouse_y + k*32, objNeosAttack_Finale_Square);
            a . radius = 32 * (_total/2-i);
            a . angle = 90;
            with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, -180, 0, _dura, true);}

            a = instance_create(mouse_x - 16 - i*32, mouse_y + k*32, objNeosAttack_Finale_Square);
            a . radius = 32 * (_total/2-i);
            a . angle = 90;
            with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180, 0, _dura, true);}

        }
        else
        {
            // Walls
            if i == _total/2 - 1
            {
                a = instance_create(mouse_x + 16 + i*32, mouse_y+k*32, objNeosAttack_Finale_Square);
                a . radius = 32 * (_total/2-i);
                a . angle = 90;
                with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, -180, 0, _dura, true);}

                a = instance_create(mouse_x - 16 - i*32, mouse_y+k*32, objNeosAttack_Finale_Square);
                a . radius = 32 * 1;
                a . angle = 90;
                with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180, 0, _dura, true);}
            }
        }
    }
}

with object800
    visible = true;
#define Other_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//instance_create(mouse_x, mouse_y, object801);
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Spikes
/*
for (i=128+16; i<800-128; i+=32)
{
    instance_create(i,304+8+64,objNeosSpikeWall);
}

// sides walls
var _a;
for (i=304+32+64; i<608-32; i+=32)
{
    _a = instance_create(128-8,i,objNeosSpikeWall);
    _a . image_angle = 90;

    _a = instance_create(800-128+8,i,objNeosSpikeWall);
    _a . image_angle = 270;
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Infinite jump
/*
for (i=0; i<32; i+=1)
{
    var _angle;
    _angle = 360 / 32 * i;

    a = instance_create(mouse_x, mouse_y, objNeosInfJumpShape);
    if i < 16
    {
        a . angle = 0;
        a . angle_target = _angle;
    }
    else
    {
        a . angle = 180;
        a . angle_target = _angle;
    }
};
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var _angle, _x, _y, _rad;

_rad = 128;
for (j = 0; j < 8; j+=1)
{
    explo_angle = 360 / 8 * j;
    _x = lengthdir_x(_rad, explo_angle);
    _y = lengthdir_y(_rad, explo_angle);

    for (i=0; i<8; i+=1)
    {
        _angle = 360 / 8 * i;
        _init_angle = explo_angle + 180;
        a = instance_create(mouse_x + _x, mouse_y + _y, object806);
        a . angle = _init_angle;
        a . angle_target = explo_angle + _angle;
        a . radius = _rad/2;
        a . duration = 100;
    }
}
