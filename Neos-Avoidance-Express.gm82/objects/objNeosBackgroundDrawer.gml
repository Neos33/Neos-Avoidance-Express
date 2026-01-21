#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
depth = 20000;
visible = false;

/*color_top = make_color_rgb(66, 255, 255);
color_bottom = make_color_rgb(181, 255, 255);
color_middle = merge_color(color_top, color_bottom, 0.5);
*/
color_top = c_white;
color_bottom = color_top;
color_middle = color_top;

color_top_target = color_top;
color_bottom_target = color_bottom;
color_middle_target = color_middle;

//hspeed = .75;
//vspeed = .75;

x = 16;
y = x;

status = "Standby";
timer = 0;
duration = 0;
counter = 0;
ease = EaseLinear;

// Surface
drawX = 0;
drawY = 0;
distanceX = 0;
distanceY = 0;
init_surf = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Timeline
//x = x mod 64;
//y = y mod 64;

x = x mod 48;
y = y mod 96;

if !instance_exists(player) exit;


var _t;
_t = objNeosAvoidanceController.timer;


switch _t
{
    case 1:
        var _ct, _cb;
        _ct = make_color_rgb(132, 192, 221);
        _cb = make_color_rgb(169, 224, 221);
        scrNeosSetColorBackground(350, merge_color(_ct, c_black, 0.15), merge_color(_cb, c_black, 0.15));
        scrNeosTweenFire(id, EaseOutQuad, "image_alpha", 0, 0.25, 0, duration, false);
        visible = true;
    break;

    case 328:
        scrNeosTweenFire(id, EaseInQuad, "speed", 0, 0.75, 0, 15, false);
        direction = -45;
    break;

    case 332:
    case 351:
    case 368:
    case 383:
    case 403:
        timer = 0;
        duration = 15;
        var _ct, _cb, _c1, _c2;
        _c1 = 100;
        _c2 = 170;
        _ct = make_color_rgb(_c1, _c1, _c1);
        _cb = make_color_rgb(_c2, _c2, _c2);
        color_top_target    = merge_color(color_top, _ct, counter / 4);
        color_bottom_target = merge_color(color_bottom, _cb, counter / 4);
        color_middle_target = merge_color(color_top_target, color_bottom_target, 0.50);

        counter += 1;
        status = "Apply";
    break;

    case 500:
        var _dur;
        _dur = abs(48 - x) * 2 * speed;
        scrNeosTweenFire(id, EaseOutSine, "direction", direction, -45, 0, _dur, true);
        scrNeosTweenFire(id, EaseLinear, "x", x, 48, 0, _dur, false);
        scrNeosTweenFire(id, EaseLinear, "y", y, 48, 0, _dur, false);

        counter = 0;
    break

    /*case 600:
        var _ct, _cb;
        _ct = make_color_rgb(132, 192, 221);
        _cb = make_color_rgb(169, 224, 221);
        scrNeosSetColorBackground(25, merge_color(_ct, c_black, 0.15), merge_color(_cb, c_black, 0.15));
    break;*/

    case 626:
        var _ct, _cb;
        _ct = make_color_rgb(230, 174, 196);
        _cb = make_color_rgb(203, 166, 225);
        scrNeosSetColorBackground(25, _ct, _cb, merge_color(c_black, c_white, 0.8));
        scrNeosTweenFire(id, EaseOutSine, "direction", direction, 0, 0, 25, false);
    break;

    // Surprise !
    case 798:
        var _ct, _cb;
        _ct = make_color_rgb(132, 184, 172);
        scrNeosSetColorBackground(60, _ct, merge_color(c_blue, c_white, 0.6), merge_color(c_black, c_white, 0.6));
        scrNeosTweenFire(id, EaseOutSine, "direction", direction, 0, 0, 90, false);
    break;

    case 1005:
    /*case 1023:
    case 1041:
    case 1059:
    case 1076:
        var _duration;
        _duration[0] = 1023 - timer;
        _duration[1] = 1041 - timer;
        _duration[2] = 1059 - timer;
        _duration[3] = 1076 - timer;
        _duration[4] = 40;
        scrNeosSetColorBackground(_duration[counter],
                                merge_color(merge_color(c_lime, c_white, 0.65), c_white, (counter+1)/5),
                                merge_color(merge_color(c_green, c_black, 0.65), c_white, (counter+1)/5));
        counter += 1;*/
        scrNeosSetColorBackground(1076 - timer, c_white, c_white, c_white);
    break;

    /// Light up the borders
    case 1359:
        var _col;
        _col = merge_color(c_aqua, c_white, 0.55);
        scrNeosSetColorBackground(30, _col, _col);
    break; // 22
    case 1370:
        var _col;
        _col = merge_color(c_black, c_purple, 0.65);
        scrNeosSetColorBackground(50, _col, _col);
    break;

    case 1741:
        var _col;
        _col = merge_color(c_purple, c_white, 0.55);
        scrNeosSetColorBackground(30, _col, _col);
    break; // 29
    case 1755:
        var _col;
        _col = merge_color(c_aqua, c_green, 0.65);
        scrNeosSetColorBackground(50, _col, _col);
    break;
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Status

switch status
{
    case "Standby":
        // Do nothing
        exit;
    break;

    case "Apply":
        if timer < duration
        {
            var _tween;
            _tween = script_execute(ease, timer, 0, 1, duration);

            color_top = merge_color(color_top, color_top_target, _tween);
            color_bottom = merge_color(color_bottom, color_bottom_target, _tween);
            color_middle = merge_color(color_middle, color_middle_target, _tween);

            timer += 1;
        }
        else
        {
            // Tween finished, change status
            status = "Standby";
        }
    break;
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Draw on the surface (unused)
// Init i
/*
if !init_surf
{
    drawX = x - background_get_width(background77)/2;
    drawY = y - background_get_height(background77)/2;
    distanceX = 0;
    distanceY = 0;

    xspeed = hspeed;
    yspeed = vspeed;

    start_speed = speed;

    init_surf = true;
}

var _dist;
_dist = objNeosCinemaProjection.distance_eraser;

//draw_rectangle_color(0, 0, 800, 304-_dist, color_top, color_top, color_middle, color_middle, false);
//draw_rectangle_color(0, 304+_dist, 800, 608, color_middle, color_middle, color_bottom, color_bottom, false);

draw_rectangle_color(0, -0.5, 800, 0.5+304-_dist, c_red, c_red, c_green, c_green, false);
draw_rectangle_color(0, 304+_dist-0.5, 800, 608+0.5, c_green, c_green, c_blue, c_blue, false);

draw_background_tiled_ext(background77, drawX + lengthdir_x(distanceX, direction),
                                       drawY + lengthdir_y(distanceY, direction),
                                       image_xscale, image_yscale, c_yellow, 0.8);
draw_background_tiled_ext(background77, -drawX+32 - lengthdir_x(distanceX, direction+180),
                                       -drawY+32 - lengthdir_y(distanceY, direction+180),
                                       image_xscale, image_yscale, c_yellow, 0.8);

draw_background_tiled_ext(background78, drawX + lengthdir_x(distanceX, direction),
                                       drawY + lengthdir_y(distanceY, direction),
                                       image_xscale, image_yscale, c_yellow, 0.8);
draw_background_tiled_ext(background78, -drawX+32 - lengthdir_x(distanceX, direction+180),
                                       -drawY+32 - lengthdir_y(distanceY, direction+180),
                                       image_xscale, image_yscale, c_yellow, 0.8);

/*draw_background_tiled_ext(bNeosSquare, drawX + lengthdir_x(distanceX, direction),
                                       drawY + lengthdir_y(distanceY, direction),
                                       image_xscale, image_yscale, image_blend, image_alpha);
draw_background_tiled_ext(bNeosSquare, -drawX+32 - lengthdir_x(distanceX, direction),
                                       -drawY+32 - lengthdir_y(distanceY, direction),
                                       image_xscale, image_yscale, image_blend, image_alpha);
*/

distanceX += start_speed;
distanceY += start_speed;
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Draw on the surface
var _dist;
_dist = objNeosCinemaProjection.distance_eraser;

/*surf_rect_color_top = c_red;
surf_rect_color_bottom = c_blue;
surf_rect_color_middle = c_green;
*/
draw_rectangle_color(0, -0.5, 800, 0.5 + 304 - _dist,
                    surf_rect_color_top, surf_rect_color_top,
                    surf_rect_color_middle, surf_rect_color_middle, false);

draw_rectangle_color(0, 304 + _dist - 0.5, 800, 608 + 0.5,
                    surf_rect_color_middle, surf_rect_color_middle,
                    surf_rect_color_bottom, surf_rect_color_bottom, false);

//draw_background_tiled_ext(bNeosSquare, x, y, image_xscale, image_yscale, image_blend, image_alpha);
//draw_background_tiled_ext(bNeosSquare, -x+32, -y+32, image_xscale, image_yscale, image_blend, image_alpha);

draw_background_tiled_ext(bNeosGrid_3, xx, yy, image_xscale, image_yscale, image_blend, image_alpha);
draw_background_tiled_ext(bNeosGrid_3, -xx+32, -yy+32, image_xscale, image_yscale, image_blend, image_alpha);


xx += hspd;
yy += vspd;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_rectangle_color(0, 0, 800, 304, color_top, color_top, color_middle, color_middle, false);
draw_rectangle_color(0, 304, 800, 608, color_middle, color_middle, color_bottom, color_bottom, false);

//draw_background_tiled_ext(bNeosSquare, x, y, image_xscale, image_yscale, image_blend, image_alpha);
//draw_background_tiled_ext(bNeosSquare, -x+32, -y+32, image_xscale, image_yscale, image_blend, image_alpha);

draw_background_tiled_ext(bNeosGrid_3, x, y, image_xscale, image_yscale, image_blend, image_alpha);
draw_background_tiled_ext(bNeosGrid_3, -x+32, -y+32, image_xscale, image_yscale, image_blend, image_alpha);
