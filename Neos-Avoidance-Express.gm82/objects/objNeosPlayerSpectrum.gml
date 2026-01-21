#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
player_x_pos = -1;
player_y_pos = -1;

//scale_percentage = 1;

amount = 16;
for (i=0; i<amount; i+=1)
{
    color[i] = scrNeosNewRange(i, 0, amount - 1, 0, 255);
    scale_percentage[i] = scrNeosNewRange(i, 0, amount - 1, 0, 3);
    percentage[i] = scrNeosNewRange(i, 0, amount - 1, 0, 1);
}


timer = 0;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Follow player's position
if instance_exists(player)
{
    player_x_pos = player.x;
    player_y_pos = player.y;
}

for (i=0; i<amount; i+=1)
{
    color[i] -= 1 mod 255;
    scale_percentage[i] += ((max(0, mouse_y / 608)) - scale_percentage[i]) * 0.1;
}

mouse_y_prev = mouse_y;
//timer += 1;
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

var _scale;

_scale = scale_percentage;
var _color;
_color = color;

var _white_mask_sprite, _sprite_name;

var _cur_sprite;
switch player.sprite_index
{
    case sprPlayerFall: _cur_sprite = sprNeosPlayerFallWhite; break;
    case sprPlayerIdle: _cur_sprite = sprNeosPlayerIdleWhite; break;
    case sprPlayerJump: _cur_sprite = sprNeosPlayerJumpWhite; break;
    case sprPlayerRunning: _cur_sprite = sprNeosPlayerRunningWhite; break;
}
var i, _total;
_total = amount
for (i = amount - 1; i >= 0; i -= 1)
{
    //d3d_set_fog(true, make_color_hsv(color[i], 200, 255), 0, 0);

    //d3d_set_fog(true, c_white, 0, 0);
    var _col;
    _col = make_color_hsv(color[i], 200, 255);


    with player
    {

        draw_sprite_ext(_cur_sprite, image_index, x, y, image_xscale*(i*8)*_scale, (i*8)*_scale, 0, _col, i/_total);
    }
    //d3d_set_fog(false, c_white, 0, 0);
}
