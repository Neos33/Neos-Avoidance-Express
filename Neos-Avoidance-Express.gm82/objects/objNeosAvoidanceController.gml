#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrNeosGlobals();

sound_stop_all();
sound_play(musNeosAvoidance);

//musicEndurance = FMODSoundPlay(global.musicAvoidance, false);
timer = global.Neos_timer_start;

endtimer = 1968;

song_t = 0;
song_real_time = 0;

depth = -1000;
background_color = c_black;

counter = 0;
counter_entity = 0;
infinite_jump = false;

with block visible = true;
event_user(0); // Create layout


spike_ceiling = -1;

list = ds_list_create();
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Sync song

event_user(15);
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Debug stuff
y_space_debug = 16;
debug_step_record_index = 0;
for (i=0; i<10; i+=1)
{
    list_of_steps[i] = 0;
};
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Clean up
ds_list_clear(list);
ds_list_destroy(list);
//FMODInstanceStop(musicEndurance);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Create spikes
if counter < 23/2
{
    instance_create(32 + 32 * counter, 608 - 32, objNeosSpike);
    instance_create(736 - 32 * counter, 608 - 32, objNeosSpike);
    alarm[0] = 5;
    counter += 1;
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Create barrier (unused)
/*
if index >= 0
{
    var _inst;
    _inst = instance_create_depth(400, 304, 1, object797);
    _inst . targetX = 400 + 128;
    _inst . targetY = ds_list_find_value(list, index);


    _inst = instance_create_depth(400, 304, 1, object797);
    _inst . targetX = 400 - 128;
    _inst . targetY = ds_list_find_value(list, total_index - index);




    alarm[1] = 5;
    index -= 1;
    //sound_play(sndBlockChange);
}
if index < 0
{
    ds_list_clear(list);
    //instance_destroy();
}
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var _y, _inst;
_y = objNeosCinemaProjection.y_off;
_inst = instance_create_moving(irandom_range(16,800-16),304-_y,objNeosAttack_Finale_RNGCeiling,3,270);
_inst . image_blend = make_color_hsv_standard(irandom(360), 90, 100);

alarm[2] = 3;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=--- Avoidance ---
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Avoidance timeline - Attacks

switch timer
{
    case 75:
        var _duration;
        _duration = 328 - 75;

        with instance_create(50, 0, objNeosAttack_1_Spawn)
            scrNeosTweenFire(id, EaseOutSine, "y", y, 608 - 96, 0, _duration, false);

        with instance_create(750, 0, objNeosAttack_1_Spawn)
            scrNeosTweenFire(id, EaseOutSine, "y", y, 608 - 96, 0, _duration, false);
    break;

    case 328:
        with objNeosAttack_1_Spawn
        {
            scrNeosTweenFire(id, EaseInSine, "y", y, -96, 0, 75, false);
            alarm[0] = 0;
            //alarm[1] = 1;
        }
    break;

    case 332:
    case 351:
    case 368:
    case 383:
    case 403:
        if instance_exists(player)
        {
            with objNeosAttack_1_Spawn
            {
                var _dire;
               _dire = point_direction(x, y, player.x, player.y);
               //_dire = point_direction(x, y, 400, 608-32);
                var _offset;
                _offset = 20;
                for (i = 1; i <= 5; i += 1)
                {
                    /*for (k=_offset*2; k<360; k+=360/64)
                    {
                        instance_create_moving(x, y, deliciousFruit, 6+i, _dire + k - _offset, 0.15, _dire + k-_offset);
                    };*/
                    //instance_create_moving(x, y, deliciousFruit, 6+i, _dire + _offset, 0.15, _dire + _offset);
                    for (j = 0; j < 3; j += 1)
                    {
                        instance_create_moving(x, y, objNeosAttack_1_BurstToPlayer, 6+i, _dire - _offset-5*j, 0.15, _dire - _offset-5*j);
                        instance_create_moving(x, y, objNeosAttack_1_BurstToPlayer, 6+i, _dire + _offset+5*j, 0.15, _dire + _offset+5*j);
                    }


                }
            }
        }
    break;

    case 428:
        instance_destroy_id(objNeosAttack_1_Spawn);
    break;

    case 384:
        counter = 0;
        alarm[0] = 1;
    break;

    case 617:
        scrNeosCreateAttack_2(4, 0, 1, 96, 400+64, 0);
        scrNeosCreateAttack_2(4, 45, 1, 96, 400+160, 0);

        scrNeosCreateAttack_2(4, 0, 1, 96, 400-64, 0);
        scrNeosCreateAttack_2(4, 45, 1, 96, 400-160, 0);
    break;

    /*
    // Spawn bullets on player's position
    case 618:
    case 635:
    case 655:
    case 675:
    case 690:
        var _duration;
        _duration[0] = 715 - timer;
        _duration[1] = 731 - timer;
        _duration[2] = 749 - timer;
        _duration[3] = 768 - timer;
        _duration[4] = 784 - timer;
        
        var _inst;
        _inst = instance_create(player.x, player.y, object801);
        _inst . duration = floor(_duration[counter_entity] / 2);
        _inst . targetX = 100 + 150*counter_entity;
        _inst . targetY = 304;
        
        counter_entity += 1;
    break;*/
    
    case 714: 
        counter = 0; 
        //scrNeosCreateAttack5h(8, 0, 1, 128, 800, -6);
        //scrNeosCreateAttack5h(8, 0, 1, 128, 0, 6);
        
        // Destroy blocks
        var _block_find, _bottom_block;
        _bottom_block = 608 - 160;
        _block_find[0] = instance_place(96, _bottom_block, block);
        _block_find[1] = instance_place(800-32 - 96 - 32*4, _bottom_block, block);
        instance_destroy_id(_block_find[0]);
        instance_destroy_id(_block_find[1]);
        
        _block_find[2] = instance_place(400 - 16 - 64, 608-256, block);
        instance_destroy_id(_block_find[2]);
    break;
    
    case 785: 
        counter = 0; 
        /*var _draw;
        _draw = instance_create(x, y, objNeosBlendDrawing); 
        _draw . depth = 1;*/
    break;
    
    // Fade out 3d attack
    case 788:
        scrNeosTweenFire(objNeosAttack_2, EaseLinear, "image_alpha", 1, 0, 0, 15, false);
        objNeosAttack_2.mask_index = sprNeosNothing;
    break;
    case 803: // Destroy 3d attack
        instance_destroy_id(objNeosAttack_2);
    break;

    case 815:
        // Add angles
        for (i=0; i<360; i+=360/8)
        {
            ds_list_add(list, i);
        }
        ds_list_shuffle(list);
        counter = 0;
    break;
    
    case 816:
    case 832:
    case 852:
    case 870:
    //case 884:
        var _current_angle;
        _current_angle = counter;
    
        var _inst;
        _inst[0] = instance_create(400, 304, objNeosRotateAttack);
        _inst[0] . angle = ds_list_find_value(list, counter);
        _inst[0] . angle_speed = 0;
        _inst[0] . radius = 0;
        scrNeosTweenFire(_inst[0], EaseOutBack, "radius", 0, 64, 0, 15, false);        
        
        counter += 1;
        
        _inst[1] = instance_create(400, 304, objNeosRotateAttack);
        _inst[1] . angle = ds_list_find_value(list, counter);
        _inst[1] . angle_speed = 0;
        _inst[1] . radius = 0;
        scrNeosTweenFire(_inst[1], EaseOutBack, "radius", 0, 64, 0, 15, false);
        
        counter += 1;
        
        var _col_angle, _col_next_angle, _angle, _next_angle;
        _angle = ds_list_find_value(list, _current_angle);
        _next_angle = ds_list_find_value(list, _current_angle+1);
        
        _col_angle = make_color_hsv_standard(_angle, 90, 100);
        _col_next_angle = make_color_hsv_standard(_next_angle, 90, 100);
        
        var _half_circle;

        for (i=-20; i<=20; i+=10)
        {
            _half_circle = instance_create_moving(400, 304, deliciousFruit, 4, _angle + i);
            _half_circle . sprite_index = sprNeosCherryTrailBright
            _half_circle . image_blend = _col_angle;
            _half_circle = instance_create_moving(400, 304, deliciousFruit, 4, _next_angle + i);
            _half_circle . sprite_index = sprNeosCherryTrailBright
            _half_circle . image_blend = _col_next_angle;
        };
        
    /*
        var _cherry_pos, _circle_top, _circle_bottom, _angle_spd, _pos;
        _angle_spd = 3;
        //_duration = 75;
        
        var _burst_timer_list;
        _burst_timer_list[0] = 909;
        _burst_timer_list[1] = 927;
        _burst_timer_list[2] = 945;
        _burst_timer_list[3] = 964;
        _burst_timer_list[4] = 980;
        
        _duration = (_burst_timer_list[counter] - timer) div 2;
        
        for (i=0; i<360; i+=360/8)
        {
            // Get position
            _pos[0] = inst_cherry_list_top[counter].x;
            _pos[1] = inst_cherry_list_top[counter].y;
            
            _circle_top = instance_create(_pos[0], _pos[1], objNeosCircleAttack);
            _circle_top . angle = i;
            _circle_top . angle_speed = _angle_spd;
            _circle_top . duration = _duration;
            //_circle_top . sprite_index = sprCherryWhite;
            _circle_top . sprite_index = sprNeosCherrySolid;
            //_circle_top . color_start = c_purple;
            //_circle_top . color_target = c_white;
            _circle_top . color_start = merge_color(c_purple, c_white, .1);
            _circle_top . color_target = merge_color(c_purple, c_white, .5);
            
             // Get position (opposite side)
            _pos[0] = inst_cherry_list_bottom[4 - counter].x;
            _pos[1] = inst_cherry_list_bottom[4 - counter].y;
            
            _circle_bottom = instance_create(_pos[0], _pos[1], objNeosCircleAttack);
            _circle_bottom . angle = i;
            _circle_bottom . angle_speed = -_angle_spd;
            _circle_bottom . duration = _duration;
            //_circle_bottom . sprite_index = sprCherryWhite;
            _circle_bottom . sprite_index = sprNeosCherrySolid;
            //_circle_bottom . color_start = c_green;
            //_circle_bottom . color_target = c_white;
            _circle_bottom . color_start = merge_color(c_green, c_white, .1);
            _circle_bottom . color_target = merge_color(c_green, c_white, .5);
        };
        

        counter += 1;*/
    break;
    
    case 884:
        with objNeosRotateAttack
        {
            scrNeosTweenFire(id, EaseOutQuad, "image_xscale", 6, 1, 0, 20, false);
            scrNeosTweenFire(id, EaseOutQuad, "image_yscale", 6, 1, 0, 20, false);
        }
    break;
    
    case 907:
        instance_destroy_id(objNeosRotateAttack);
        var _angle, _x, _y, _rad, _color_def;
    
        _rad = 128;
        _color_def = make_color_hsv(irandom(255), 200, 220);
        for (j = 0; j < 8; j+=1)
        {
            explo_angle = 360 / 8 * j;
            _x = lengthdir_x(_rad, explo_angle);
            _y = lengthdir_y(_rad, explo_angle);
        
            for (i=0; i<6; i+=1)
            {
                _angle = 360 / 6 * i;
                _init_angle = explo_angle + 180;
                a = instance_create(400 + _x, 304 + _y, objNeosAttack_3);
                a . angle = _init_angle;
                a . angle_target = explo_angle + _angle;
                a . radius = _rad/2;
                a . duration = 10;
                a . target_color = _color_def;
            }
        }
    break;
    case 957:
        with objNeosAttack_3
        {
            var _dire, _dist, _inst;
            _dire = point_direction(x, y, 400, 304);
            _dist = point_distance(x, y, 400, 304);
            _inst = instance_create_moving(x, y, deliciousFruit, _dist / radius * 1.5, _dire, _dist / radius * 0.075, _dire+180);
            _inst . image_blend = target_color;
            _inst . sprite_index = sprNeosCherrySolid;
            instance_destroy();
        }
    break;
    case 908: counter = 0; break;
    
    case 909:
    case 927:
    case 945:
    case 964:
    case 980:
        with objNeosAttack_3 
        {
            image_xscale = 0.25;
            image_yscale = image_xscale;
        }
    break;
    /*
    case 1006:
    case 1024:
    case 1043:
    case 1064:
    case 1080:
        /*var _pos_t, _pos_b;
        _pos_t[0] = inst_cherry_list_top[counter].x;
        _pos_t[1] = inst_cherry_list_top[counter].y;
        
        
        _pos_b[0] = inst_cherry_list_bottom[4 - counter].x;
        _pos_b[1] = inst_cherry_list_bottom[4 - counter].y;


        var _rng;
        _rng = irandom(360);
        for (i=0; i<360; i+=360/4)
        {
            t = instance_create(_pos_t[0], _pos_t[1], objNeosAttack_4);
            t . speed = 8;
            t . direction = i+_rng;
            t . gravity_direction = 270;
            t . gravity = 0.3;
            
            t = instance_create(_pos_b[0], _pos_b[1], objNeosAttack_4);
            t . speed = 8;
            t . direction = i+_rng;
            t . gravity_direction = 90;
            t . gravity = 0.3;
        }
        
        instance_destroy_id(inst_cherry_list_top[counter]);
        instance_destroy_id(inst_cherry_list_bottom[4 - counter]);
        
        counter += 1;
    break;
    
    case 1100:

        

    break;*/
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Avoidance timeline - Visuals

switch timer
{
    case 0: // It'll be execute once
        event_user(0);
    break;

    // Layout shift end
    case 328:
        layout_control = instance_create(0, 0, objNeosTileLayout);
        layout_control . left = objNeosTileLayoutNormal.left;
        layout_control . top = objNeosTileLayoutNormal.top;
        layout_control . right = objNeosTileLayoutNormal.right;
        layout_control . bottom = objNeosTileLayoutNormal.bottom;
        
        // Destroy / Replaced
        instance_destroy_id(objNeosTileLayoutNormal);
        
        scrNeosChangeLayout(layout_control, 32, 304 - 16, 800 - 32, 608 - 32, EaseOutQuad, 30);
        
        /*with objNeosBackgroundDrawer
        {
            hspeed = .75;
            vspeed = .75;
        }*/
    break;
    
    case 368:
        var _current_top;
        _current_top = layout_control.top;
        scrNeosTweenFire(layout_control, EaseOutSine, "top", _current_top, 608 - 128, 0, 20, false);
    break;
    
    case 388:
        var _current_top;
        _current_top = layout_control.top;
        scrNeosTweenFire(layout_control, EaseInOutSine, "top", _current_top, 304-16-32*3, 0, 20, false);
        
        //counter = 0;
        //alarm[0] = 1;
        
        var _top_block, _bottom_block; // Position
        _top_block = 608 - 256;
        _bottom_block = 608 - 160;
        
        var _block;
        _block = instance_create(96, _bottom_block, block);
        _block . image_xscale = 5;
        
        _block = instance_create(400 - 16 - 64, _top_block, block);
        _block . image_xscale = 5;
        
        _block = instance_create(800-32 - 96 - 32*4, _bottom_block, block);
        _block . image_xscale = 5;
    break;
    case 400:
        var _safe_zone;
        //_safe_zone = instance_create(400 - 16 - 64 - 32, 608 - 224 - 32 * 3, objNeosZoneMark);
        //_safe_zone . width = 32 * 7;
        //_safe_zone . height = 32 * 2;
        _safe_zone = instance_create(400 - 16-32, 304-16-32, objNeosZoneMark);
        _safe_zone . width = 96;
        _safe_zone . height = 96;
        _safe_zone . duration = 520 - 400;
        _safe_zone . image_blend = c_green;
        
        with _safe_zone
        {
            scrNeosTweenFire(id, EaseOutCubic, "image_alpha", 0, 1, 0, 20, false);
            scrNeosTweenFire(id, EaseOutCubic, "offset", 256, 0, 0, 20, false);
        }
        
        /*_danger_zone = instance_create(32, 608 - 64, objNeosZoneMark);
        _danger_zone . width = 32 * 23;
        _danger_zone . image_blend = c_red;*/
    break;
    
    case 519: counter_layout = 2; break;
    case 520:
    case 539:
    case 556:
    case 575:
    case 591:
        //scrNeosChangeLayout(layout_control, 32, 304-16, 800-32, 608 - 32 * counter_layout, EaseInQuad, 5);
        scrNeosTweenFire(layout_control, EaseLinear, "bottom", 608 - 32 * (counter_layout-1), 608 - 32 * counter_layout, 0, 10, false);
        counter_layout += 1;
    break;
    
    case 592:
        var _space;
        _space = 16;
        scrNeosChangeLayout(layout_control, 400-_space,304-_space,400+_space,304+_space,EaseOutExpo,50);
        scrNeosTweenFire(objNeosSpike, EaseOutCubic, "offset", 0, 48, 0, 30, false);
    break;
    
    // Fade out "Safe zone"
    case 620:
        scrNeosTweenFire(objNeosZoneMark, EaseOutCubic, "image_alpha", 1, 0, 0, 30, false);
        scrNeosTweenFire(objNeosZoneMark, EaseOutCubic, "offset", 0, 32, 0, 30, false);
        
        // Surprise ! (long corridor and bottom-center is filled with spikes) (only safe spot are the sides)
        scrNeosChangeLayout(layout_control, 64, 304-16, 800-64, 304+16, EaseOutExpo, 50);
        for (i=128; i<800-128; i+=32)
        {
            instance_create(i,304+64,objNeosSpikeWall);
        }
        
        // sides walls
        var _a;
        for (i=304+96; i<608-32; i+=32)
        {
            _a = instance_create(128-32,i,objNeosSpikeWall);
            _a . image_index = 3;
            
            _a = instance_create(800-128,i,objNeosSpikeWall);
            _a . image_index = 2;
        }
        
        with objNeosSpikeWall visible = false;
        with instance_create(128,304+96,block)
        {
            image_xscale = (800 - 256) / 32;
            image_yscale = 6;
            visible = false;
            depth = 1; // Tag
        }
        
        var _safe;
        _safe = instance_create(64,304-16,objNeosZoneMark);
        _safe . duration = 50;
        _safe . width = 48;
        _safe . height = 32;
        _safe . offset = 20;
        _safe . image_blend = c_green;
        
        _safe = instance_create(800-64-48,304-16,objNeosZoneMark);
        _safe . duration = 50;
        _safe . width = 48;
        _safe . height = 32;
        _safe . offset = 20;
        _safe . image_blend = c_green;

        with objNeosZoneMark scrNeosTweenFire(id, EaseOutCubic, "offset", 20, 0, 0, 30, false);
    break;
    
    case 720:
        with objNeosZoneMark
        {
            scrNeosTweenFire(id, EaseOutCubic, "offset", 0, 32, 0, 50, false);
            scrNeosTweenFire(id, EaseOutCubic, "image_alpha", 1, 0, 0, 50, false);
        }   
    break;
    
    // Expand layout (Default avoidance layout)
    case 788:
        scrNeosTweenFire(layout_control, EaseOutQuad, "top", layout_control.top, 32, 0, 30, false);
        scrNeosTweenFire(layout_control, EaseOutQuad, "bottom", layout_control.bottom, 608-64, 0, 30, false);
    break;
    
    case 900:
        var _spd;
        _spd = point_distance(x,y,x,304+64) / 105;
        with objNeosSpikeWall 
            vspeed = _spd;
        with block 
        {
            if depth == 1
            {
                vspeed = _spd;
            }
        }
    break;

    // Reset
    case 1005: 
        counter_layout = 0;
        layout_left_start = layout_control.left;
        layout_top_start = layout_control.top;
        layout_right_start = layout_control.right;
        layout_bottom_start = layout_control.bottom;
        
        with layout_control depth = choose(-10000);
        
        // Destroy / Replaced
        instance_destroy_id(objNeosTileLayout);
        
        layout_control = instance_create(0, 0, objNeosTileLayoutNormal);
        layout_control . left = layout_left_start;
        layout_control . top = layout_top_start;
        layout_control . right = layout_right_start;
        layout_control . bottom = layout_bottom_start;
        
        instance_destroy_id(objNeosCamera);
    break;
    
    case 1009:
    case 1027:
    case 1044:
    case 1061:
    case 1076:
        var _dur;
        _dur[0] = min(20, 1027 - 1009);
        _dur[1] = min(20, 1044 - 1027);
        _dur[2] = min(20, 1061 - 1044);
        _dur[3] = min(20, 1076 - 1061);
        _dur[4] = 20;
        
        
        var _tarX, _tarY;
        _tarX = 400;
        _tarY = 304;
        
        var _target_layout;
        _target_layout[0] = lerp(layout_left_start, _tarX - 80, counter_layout / 4); // Left
        _target_layout[1] = lerp(layout_top_start, _tarY - 80, counter_layout / 4); // Top
        _target_layout[2] = lerp(layout_right_start, _tarX + 80, counter_layout / 4); // Right
        _target_layout[3] = lerp(layout_bottom_start, _tarY + 80, counter_layout / 4); // Bottom
        
        var _target_pos;
        _target_pos[0] = 400 - 800 / 3 / 2;
        _target_pos[1] = 304 - 608 / 3 / 2;
        
        var _target_zoom;
        _target_zoom[0] = 800 / 3;
        _target_zoom[1] = 608 / 3;
        
        var _current_pos;
        _current_pos[0] = lerp(0, _target_pos[0], counter_layout / 4);
        _current_pos[1] = lerp(0, _target_pos[1], counter_layout / 4);
        
        var _current_zoom;
        _current_zoom[0] = lerp(800, _target_zoom[0], counter_layout / 4);
        _current_zoom[1] = lerp(608, _target_zoom[1], counter_layout / 4);
        
        scrNeosChangeLayout(layout_control, _target_layout[0],
                                            _target_layout[1],
                                            _target_layout[2],
                                            _target_layout[3], 
                                            EaseOutSine, _dur[counter_layout]);
                                            
        scrNeosTweenCameraMove(EaseOutSine, 0, view_xview[0], view_yview[0], _current_pos[0], _current_pos[1], 0, _dur[counter_layout], false);
        scrNeosTweenCameraZoom(EaseOutSine, 0, view_wview[0], view_hview[0], _current_zoom[0], _current_zoom[1], 0, _dur[counter_layout], false);
        counter_layout += 1;
    break;
    
    // Zoom out (back to normal view)
    case 1096:
        //instance_destroy_id(objNeosAttack_1);
        
        var _dur;
        _dur = 1198 - timer-1;
        scrNeosTweenCameraMove(EaseInSine, 0, view_xview[0], view_yview[0], 0, 0, 0, _dur, false);
        scrNeosTweenCameraZoom(EaseInSine, 0, view_wview[0], view_hview[0], 800, 608, 0, _dur, false);
    break;
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Avoidance timeline - Finale
switch timer
{
    /// Final transition fade line
    case 1198:
        instance_create(0, 0, objNeosRainbowBackground);
        instance_create(0, 0, objNeosParticles);
        instance_create(0, 0, objNeosCinemaProjection);

        instance_create(0, 0, objNeos3DBackgroundMovement);

        instance_create(0, 0, objNeosBackgroundDrawerVignette);
        //instance_create(0, 0, objNeosPlayerSpectrum)
        //alarm[2] = 1;

        with objNeosBackgroundDrawer
        {
            xx = x;
            yy = y;

            hspd = hspeed;
            vspd = vspeed;

            hspeed = 1;
            vspeed = 2;
            //visible = false;

            surf_rect_color_top = color_top;
            surf_rect_color_bottom = color_bottom;
            surf_rect_color_middle = color_middle;

            color_top = merge_color(c_purple, c_black, 0.1);
            color_bottom = merge_color(c_aqua, c_black, 0.1);
            color_middle = merge_color(color_top, color_bottom, 0.5);
        }

        if instance_exists(objNeosTileLayoutNormal)
        {
            var _l, _t, _r, _b;
            _l = objNeosTileLayoutNormal.left;
            _t = objNeosTileLayoutNormal.top;
            _r = objNeosTileLayoutNormal.right;
            _b = objNeosTileLayoutNormal.bottom;
            layout_control = instance_create(0, 0, objNeosTileLayout);
            layout_control . left = _l;
            layout_control . top = _t;
            layout_control . right = _r;
            layout_control . bottom = _b;


            scrNeosChangeLayout(layout_control, _l - 96, _t - 96, _r + 96, _b + 96, EaseLinear, 40);

            instance_destroy_id(objNeosTileLayoutNormal);
            instance_destroy_id(objNeosBlock2);
            //sound_play(sndSpikeTrap)
        }
    break;

    case 1250:
        var _inst;
        repeat(10)
        {
            _inst = instance_create_moving(0,608-64,objNeosAttack_Finale_RNGGravity,random_range(7,15),70+irandom_range(-20,20),0.2,270);
            _inst . depth = 1;
            _inst . image_xscale = 0.5;
            _inst . image_yscale = 0.5;
            _inst . sprite_index = sprCherryWhite;
            _inst . image_blend = make_color_hsv_standard(irandom(360), 80, 100);

            _inst = instance_create_moving(800,608-64,objNeosAttack_Finale_RNGGravity,random_range(7,15),110+irandom_range(-20,20),0.2,270);
            _inst . depth = 1;
            _inst . image_xscale = 0.5;
            _inst . image_yscale = 0.5;
            _inst . sprite_index = sprCherryWhite;
            _inst . image_blend = make_color_hsv_standard(irandom(360), 80, 100);
        }
        //alarm[2] = 0;
        /*index = 0;
        for (i=64+16; i<608-64; i+=32)
        {
            ds_list_add(list, i);
            index += 1;
        };
        index -= 1;
        total_index = index;
        alarm[1] = 1;
        */
    break;

    case 1320:
        with objNeosAttack_Finale_RNGGravity
        {
            mask_index = sprNeosNothing;
            scrNeosTweenFire(id,EaseLinear,"image_alpha",1,0,0,10,false)
        }
    break;

    case 1357:
        var _temp, _temp2, _range_space;
        //_temp = irandom_range(-32, 0);
        _range_space = 160;
        _temp = player.x - 400 + _range_space / 2;
        _temp2 = irandom_range(-10, 10);

        var _angle;
        _angle = irandom(360);

        var _total;
        _total = 20;

        var _y;
        _y = 0; //608;
        for (i=_temp; i<800; i+=_range_space)
        {
            for (k=1; k<=_total; k+=1)
            {
                a = instance_create_depth(i, _y, 1, objNeosAttack_Finale_Line);
                a . radiusTarget = 608 * (k / _total);
                a . angleTarget = _temp2;
                a . angle = 270;
                a . duration_in = 60;
                a . duration_out = 30;
            };

        };
    break;

    case 1381:
        //instance_create_moving(100, 608, objNeosAttack_Finale_SpawnerMove, 8, 90); // Left
        //instance_create_moving(700, 608, objNeosAttack_Finale_SpawnerMove, 8, 90); // Right
        instance_create_moving(160, 0, objNeosAttack_Finale_SpawnerMove, 8, 270); // Left
        instance_create_moving(800-160, 0, objNeosAttack_Finale_SpawnerMove, 8, 270); // Right
    break;

    /// Light up the borders
    case 1359: scrNeosTweenFire(objNeosDrawLayoutOutline, EaseLinear, "alpha", 0, 1, 0, 11, false); break; // 22
    case 1370: scrNeosTweenFire(objNeosDrawLayoutOutline, EaseLinear, "alpha", 1, 0, 0, 11, false); break;

    case 1741: scrNeosTweenFire(objNeosDrawLayoutOutline, EaseLinear, "alpha", 0, 1, 0, 14, false); break; // 29
    case 1755: scrNeosTweenFire(objNeosDrawLayoutOutline, EaseLinear, "alpha", 1, 0, 0, 14, false); break;

    case 1480:
        var _t, _b, _l, _r;
        _t = layout_control.top;
        _b = layout_control.bottom;

        _l = layout_control.left;
        _r = layout_control.right;

        scrNeosTweenFire(layout_control, EaseLinear, "top", _t, -16, 0, 20, true);
        scrNeosTweenFire(layout_control, EaseLinear, "bottom", _b, 16, 0, 20, true);

        scrNeosTweenFire(layout_control, EaseLinear, "left", _l, -16, 0, 20, true);
        scrNeosTweenFire(layout_control, EaseLinear, "right", _r, 16, 0, 20, true);
    break;
    case 1500:
        with objNeosAttack_Finale_RNGGravity
        {
            direction = point_direction(player.x, player.y, x, y);
            speed = 20;
            mask_index = sprNeosNothing;
        }
        var _t, _b, _l, _r;
        _t = layout_control.top;
        _b = layout_control.bottom;

        _l = layout_control.left;
        _r = layout_control.right;

        var _safe_zone;
        _safe_zone = instance_create(_l+32, _t+32, objNeosZoneMark);
        _safe_zone . width = _r - _l - 64;
        _safe_zone . height = _b - _t - 64;
        _safe_zone . image_blend = c_green;
        _safe_zone . duration = 36;

        with _safe_zone
        {
            scrNeosTweenFire(id, EaseOutCubic, "image_alpha", 0, 1, 0, 18, false);
            scrNeosTweenFire(id, EaseOutCubic, "offset", 64, 0, 0, 18, false);
        }
    break;
    case 1536:
        with objNeosZoneMark
        {
            scrNeosTweenFire(id, EaseOutCubic, "image_alpha", 1, 0, 0, 100, false);
        }
        var _total;
        _total = 12;

        var _dura;
        _dura = 1584 - 1536;

        var _x, _y;
        _x = 400;
        _y = 304;

        var _space;
        _space = 32;

        var _y_off;
        _y_off = _y - _space * (_total / 2) + _space/2;

        for (i=0; i<_total/2; i+=1)
        {
            for (k=0; k<_total; k+=1)
            {
                if (k == 0 or k == _total-1)
                {
                    a = instance_create_depth(_x + 16 + i*_space, _y_off + k*_space, i, objNeosAttack_Finale_Square);
                    a . radius = _space * (_total/2-i);
                    a . angle = 90;
                    with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, -180, 0, _dura, true);}

                    a = instance_create_depth(_x - 16 - i*_space, _y_off + k*_space, i, objNeosAttack_Finale_Square);
                    a . radius = _space * (_total/2-i);
                    a . angle = 90;
                    with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180, 0, _dura, true);}

                }
                else
                {
                    // Walls
                    if i == _total/2 - 1
                    {
                        a = instance_create_depth(_x + 16 + i*_space, _y_off + k*_space, i, objNeosAttack_Finale_Square);
                        a . radius = _space * (_total/2-i);
                        a . angle = 90;
                        with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, -180, 0, _dura, true);}

                        a = instance_create_depth(_x - 16 - i*_space, _y_off + k*_space, i, objNeosAttack_Finale_Square);
                        a . radius = _space * (_total/2-i);
                        a . angle = 90;
                        with a {scrNeosTweenFire(id, EaseOutCubic, "angle", angle, 180, 0, _dura, true);}
                    }
                }
            }
        }
    break;

    case 1584:
        var _rng, _clockwise;
        _clockwise = choose(-1, 1);
        _rng = irandom_range(10, 15) * _clockwise;

        with objNeosAttack_Finale_Square
        {
            status = "Freedom";
            angle = point_direction(400, 304, x, y);
            target_color = make_color_hsv_standard(angle, 100, 100);
            direction = angle + _rng;

            speed = point_distance(x, y, 400, 304) / (32 * 6);
            gravi = speed * 0.1;//point_distance(x, y, 400, 304) / 200;

            radius = 1;
            depth = 1;
        }
    break;

    case 1600:
        var _amount;
        _amount = 14;
        for (i=0; i<_amount; i+=1)
        {
            var _angle;
            _angle = 360 / _amount * i;

            a = instance_create(400, 152, objNeosInfJumpShape);
            a . sprite_index = sprNeosCherrySolid;
            a . image_blend = make_color_hsv_standard(_angle, 80, 100);
            a . image_alpha = 0.5;
            if i < _amount / 2
            {
                a . angle = 0;
                a . angle_target = _angle;
            }
            else
            {
                a . angle = 180;
                a . angle_target = _angle;
            }
        }

        // Infinite jump enabled
        infinite_jump = true

        with layout_control
        {
            scrNeosTweenFire(id, EaseLinear, "left", left, 400 - 48, 0, 100, false);
            scrNeosTweenFire(id, EaseLinear, "right", right, 400 + 48, 0, 100, false);

            //scrNeosTweenFire(id, EaseLinear, "top", top, 96, 0, 20, false);
            //scrNeosTweenFire(id, EaseLinear, "bottom", bottom, 608-96, 0, 20, false);
        }
    break;

    case 1700:
        // Create blocks at the screen borders
        var _block;
        _block = instance_create(0, 32, objNeosBlockScreenBordersFinale);
        _block . image_xscale = 800 / 32;
        _block = instance_create(0, 608-64, objNeosBlockScreenBordersFinale);
        _block . image_xscale = 800 / 32;

        _block = instance_create(-32, 0, objNeosBlockScreenBordersFinale);
        _block . image_yscale = 608 / 32;
        _block = instance_create(800, 0, objNeosBlockScreenBordersFinale);
        _block . image_yscale = 608 / 32;


        with objNeosInfJumpShape
        {
            inst_bouncing = instance_create_moving(x, y, objNeosAttack_Finale_Bounce, random_range(1,3),irandom(360));
            inst_bouncing . image_blend = image_blend;
            inst_bouncing . sprite_index = sprite_index;
            //instance_destroy();

            scrNeosTweenFire(id, EaseLinear, "image_alpha", image_alpha, 0, 0, 30, false);
            scrNeosTweenFire(id, EaseLinear, "image_xscale", 1, 2, 0, 30, false);
            scrNeosTweenFire(id, EaseLinear, "image_yscale", 1, 2, 0, 30, false);
        }


    break;

    case 1720:
        var _direction_rng;
        _direction_rng = choose(90, 270); // 90 going left | 270 going right
        with objNeosTileLayout
        {
            wave = true;
            angle = _direction_rng;
        }
        with block y = 608;
    break;

    // The end
    case 1942:
        var _duration;
        _duration = abs(endtimer - 1942);
        with instance_create(0, 0, objNeosSpotlightEnd)
        {
            scrNeosTweenFire(id, EaseInOutCubic, "radius", radius, 0, 0, _duration, false);
            depth = -100;
        }

        with playerKiller
            mask_index = sprNeosNothing;
    break;
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=--- Other ---
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Increase timer
if instance_exists(player)
{
    timer += 1;
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Debug tools
/*
var _key_jumpto, _key_sync, _key_print_step, _key_speed_up, _key_speed_up_rel;
_key_jumpto = keyboard_check_pressed(ord("T"));
_key_sync = keyboard_check_pressed(vk_tab);
_key_print_step = keyboard_check_pressed(ord("S"));

_key_speed_up = keyboard_check(vk_space);
_key_speed_up_rel = keyboard_check_released(vk_space);



if _key_jumpto
{
    var _jump_timer;
    _jump_timer = get_integer("Jump to a specific moment. (Limit: "+string(endtimer)+")", "");
    global.Neos_timer_start = _jump_timer;
    timer = _jump_timer;

    event_user(15); // Sync music
}

if _key_sync
{
    event_user(15); // Sync music
}


if _key_speed_up
{
    room_speed = 1000;
}
else if _key_speed_up_rel
{
    room_speed = 50;
    event_user(15); // Sync music
}


if _key_print_step
{
    list_of_steps[debug_step_record_index] = timer;
    debug_step_record_index = min(debug_step_record_index + 1, 9);
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Infinite jump
if !infinite_jump exit;

with player
    djump = true;
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Clean up
ds_list_clear(list);
ds_list_destroy(list);
//FMODInstanceStop(musicEndurance);
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// First frame
if !instance_exists(objNeosScreenColor)
{
    var inst;
    inst = instance_create(0, 0, objNeosScreenColor);
    inst . image_blend = c_black;
    inst . sprite_index = sprNeosPoint1x1;

    scrNeosTweenFire(inst, EaseLinear, "image_alpha", 1, 0, 0, 50, false);

    //instance_create(0,0,objNeosSpotlightEffect);
    var _inst_camera, _duration, _inst_bg_draw;
    _duration = 328;
    _inst_camera = instance_create(0, 0, objNeosCamera);
    // Zoom out
    scrNeosTweenFire(_inst_camera, EaseOutCubic, "w", w, 800, 0, _duration, false);
    scrNeosTweenFire(_inst_camera, EaseOutCubic, "h", h, 608, 0, _duration, false);
    scrNeosTweenCameraZoom(EaseOutCubic, 0, 200, 152, 800, 608, 0, _duration, false);

    layout_control = scrNeosCreateLayout(objNeosTileLayoutNormal, 400-16-64, 0, 400+16+64, 608 - 32);


    _inst_bg_draw = instance_create(0, 0, objNeosBackgroundDrawer);
    scrNeosTweenFire(_inst_bg_draw, EaseOutCubic, "x", 800*.5, 16, 0, _duration, false);
    scrNeosTweenFire(_inst_bg_draw, EaseOutCubic, "y", 608*.5, 16, 0, _duration, false);
}
#define Other_25
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Sync song (FMOD)
/*
if timer < endtimer
{
    var _length, _current_t, _song_sync;
    // A big lag spike, adjust music to game time.
    _length = FMODInstanceSoundGetLength(musicEndurance) / 1000;

    _current_t = (timer) / 50; // Get the frame divided by the default fangame framerate

    // Normalize value to keep between at (0 & 1)
    var _song_sync;
    _song_sync = scrNeosNewRange(_current_t, 0, _length, 0, 1);

    FMODInstanceSetPosition(musicEndurance, _song_sync);
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Debug info
d3d_set_projection_ortho(0, 0, 800, 608, 0);

draw_set_halign(fa_right);
var i;
for (i = 0; i < 10; i += 1)
{
    scrNeosDrawTextOutline(800 - 32, 32 + y_space_debug * i, list_of_steps[i], c_black, c_white);
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);

scrNeosDrawTextOutline(32, 32, "Timer: "+string(timer), c_black, c_white);
scrNeosDrawTextOutline(32, 48, "FPS: "+string(fps), c_black, c_white);
scrNeosDrawTextOutline(32, 64, "FPS Real: "+string(fps_real), c_black, c_white);
scrNeosDrawTextOutline(32, 80, "Instances: "+string(instance_count), c_black, c_white);

// Reset
d3d_set_projection_ortho(view_xview[0], view_yview[0], view_wview[0], view_hview[0], view_angle[0]);
