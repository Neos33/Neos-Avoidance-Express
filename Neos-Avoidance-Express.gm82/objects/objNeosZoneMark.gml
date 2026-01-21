#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
width = 32;
height = 32;

offset = 0;

duration = 1;

timer = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if timer < duration
{

    timer += 1;
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
// Draw fill rectangle
draw_sprite_ext(sprNeosPoint1x1, 0, x + 1 - offset,
                                    y + 1 - offset,
                                    width - 2 + offset * 2,
                                    height - 2 + offset * 2,
                                    0, image_blend, image_alpha * 0.4);

draw_sprite_ext(sprNeosPoint2x2, 0, x + width * .5,
                                    y + height * .5,
                                    timer / duration * ((width - 2)/2),
                                    timer / duration * ((height - 2)/2),
                                    0, image_blend, image_alpha * 0.5);

// Draw outline
draw_set1(image_blend, image_alpha);
draw_rectangle(x-offset, y-offset, x + width - 1+offset, y + height - 1+offset, true);

// Reset values
draw_set1(c_white, 1);
