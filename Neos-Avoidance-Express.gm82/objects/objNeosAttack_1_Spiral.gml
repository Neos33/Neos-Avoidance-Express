#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
//image_index = 1; // Hitbox

status = "Line";

timer = 0;
duration = 50;
alarm[0] = duration;

ease = EaseOutSine;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Gravity direction
gravity_direction = direction;
gravity = 0.2;
image_xscale = 0.5;
image_yscale = 0.5;
status = "Going";
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch status
{
    case "Line":
        if timer <= duration
        {
            var _tween;
            _tween = script_execute(ease, timer, 0, 1, duration);
            //image_xscale = 1 - (_tween * 0.25);
            //image_yscale = 1 - (_tween * 0.9);

            speed = 10 * (1 - _tween);

            //median(0, speed, 1);
            image_xscale = lerp(1, 0.5, _tween);
            image_yscale = lerp(0.5, 0.5, _tween);

            timer += 1;
        }


    break;
    case "Going":
        image_xscale += gravity / 10;
        image_yscale -= gravity / 20;
        image_xscale = min(2, image_xscale);
        image_yscale = max(0.1, image_yscale);
    break;
}

//image_xscale = min(1 - speed * 0.6, 2);
//image_yscale = max(0.1, 1 - speed * (1/20));
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
texture_set_interpolation(true);
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, 0, x, y, image_xscale*0.75, image_yscale*0.75, image_angle, c_white, image_alpha);
draw_set_blend_mode(bm_normal);
texture_set_interpolation(false);

if keyboard_check(vk_up)
    image_xscale += 0.01;

if keyboard_check(vk_down)
    image_xscale -= 0.01;


//image_yscale = image_xscale;
// Hitbox
//draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
