#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_visible[0] = false;

timer = color_get_hue(background_color)
color = make_color_hsv(timer, 160, 255);

darkness = 255;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
darkness = lerp(darkness, 180, 0.1);
color = make_color_hsv(timer, 100, darkness);

background_color = make_color_hsv(timer, 180, darkness);

timer += 1;
timer = timer mod 255;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_primitive_begin(pr_trianglelist);

draw_vertex_color(0,     0, color, 0);
draw_vertex_color(800,   0, color, 0);
draw_vertex_color(0,   608, color, 1);
draw_vertex_color(800,   0, color, 0);
draw_vertex_color(0,   608, color, 1);
draw_vertex_color(800, 608, color, 1);

draw_primitive_end();
