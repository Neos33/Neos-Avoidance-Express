#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
depth = 10000;
surf_3d = -1;


view_w = view_wview[0];
view_h = view_hview[0];

direction = 260;
zdire = 36;
x = 0;
y = 0;
y2 = y;
z = 42;
ratio = view_w / view_h;
fov = 40;
// get texture
gridUp = background_get_texture(bNeosFruit3DLeft);
gridDown = background_get_texture(bNeosFruit3DRight);
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Destroy the surface
if surface_exists(surf_3d)
    surface_free(surf_3d);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
y -= 1/4;
if y < 0
    y = 128;

//z = mouse_x;
#define Other_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Destroy the surface
if surface_exists(surf_3d)
    surface_free(surf_3d);
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Destroy the surface
if surface_exists(surf_3d)
    surface_free(surf_3d);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !surface_exists(surf_3d)
    surf_3d = surface_create(view_w, view_h);

//texture_set_interpolation(true);
surface_set_target(surf_3d);

draw_clear_alpha(c_black, 0);
draw_set_color(c_white);
draw_set_alpha(0.9);
d3d_start();

xTo = x + lengthdir_x(180, direction) * lengthdir_x(1,zdire);
yTo = y + lengthdir_y(180, direction) * lengthdir_x(1,zdire);
zTo = z + lengthdir_y(180, zdire);

// Set projection
d3d_set_projection_ext(x,y,z,xTo,yTo,zTo,0,0,5,fov,ratio,5,608);
d3d_draw_floor(-128,0,0,128,64*8,0,gridUp,16,32);


//draw_set_color(c_red);

//xTo2 = x + 32 + lengthdir_x(180, direction) * lengthdir_x(1,zdire);
yTo2 = (128 - y) + lengthdir_y(180, direction) * lengthdir_x(1,zdire);
d3d_set_projection_ext(x,(128 - y),z,xTo,yTo2,zTo,0,0,5,fov,ratio,5,608);
d3d_draw_floor(-128,0,0,128,64*8,0,gridDown,16,32);
//d3d_draw_floor(-128,0,0,128,64*8,0,grid,16,32);
//*/
//d3d_draw_floor(-128+32,0,0,128+64,64*8,0,grid,32,32);
d3d_end();
surface_reset_target();
draw_set_alpha(1);
draw_surface(surf_3d,view_xview[0],view_yview[0]);
texture_set_interpolation(false);
//draw_sprite_ext(sprNeosPoint1x1,0,view_xview[0],view_yview[0],800,608,0,c_black,0.6);

draw_set_color(c_white);


//draw_text(600,64,"r: "+string(r));
