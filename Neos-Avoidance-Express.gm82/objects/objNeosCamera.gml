#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
w = 800 / 4;
h = 608 / 4;

smoothness = 0.25;

//if instance_exists(player)
{
    x = 400 - w/2;
    y = 0;

    x = clamp(x, 0, 800 - w);
    y = clamp(y, 0, 608 - h);

    view_xview[0] = x;
    view_yview[0] = y;


}
visible = false;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(player) exit;

w = clamp(w, 0, 800);
h = clamp(h, 0, 608);

x += (400 - x - view_wview[0] / 2) * smoothness;
y += (player.y - y - view_hview[0] / 2) * smoothness;

x = clamp(x, 0, 800 - view_wview[0]);
y = clamp(y, 0, 608 - view_hview[0]);



view_xview[0] = x;
view_yview[0] = y;
//view_wview[0] = w;
//view_hview[0] = h;
