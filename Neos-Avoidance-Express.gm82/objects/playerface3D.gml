#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Ž€‚ñ‚¾‚Æ‚«‚É”ò‚ÔŽñ
image_speed=0;
image_index=irandom(3);

speed=random_range(1,3)
direction=random(360)
if(irandom(1)=1) xscale=-1;

maxz=10
zspeed=random_range(0.1,0.3)

gravity=0.4
if(global.grav=0) gravity_direction=270
if(global.grav=1) gravity_direction=90
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(image_xscale<maxz){

image_xscale+=zspeed
image_yscale+=zspeed
image_alpha=1-(image_xscale-1)/(maxz-1)*0.5

}else if(gravity!=0){

hspeed=0
if(global.grav=0)vspeed=random_range(0,1.5)
else vspeed=-random_range(0,1.5)
zspeed=0
gravity=0

}
