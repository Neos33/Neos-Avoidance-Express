#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ŒŒ‚Ì‚P“H
image_index = choose(0,1,2);
image_speed = 0;


maxz=40
zspeed=random_range(0,1.0)

if(global.grav=0){gravity = 0.1+random(0.2);}
else {gravity = -0.1+random(-0.2);}
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
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy();
