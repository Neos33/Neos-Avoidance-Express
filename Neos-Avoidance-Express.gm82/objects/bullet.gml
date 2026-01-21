#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒvƒŒƒCƒ„[‚ÌŒü‚¢‚Ä‚¢‚é•ûŒü‚É”ò‚ñ‚Å‚¢‚«Aˆê’èŽžŠÔ‚ªŒo‰ß‚·‚é‚ÆÁ‚·
if(global.grav=0){hspeed = player.image_xscale*16;}
else{hspeed = player2.image_xscale*16;}
alarm[0] = 40;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy();
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(place_meeting(x+hspeed,y,block)){
a=instance_place(x+hspeed,y,block)
if(a.object_index=block)instance_destroy()
else if(a.visible=1)instance_destroy()
}
#define Collision_niseblock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
