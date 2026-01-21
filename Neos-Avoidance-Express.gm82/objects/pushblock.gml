#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//‰Ÿ‚¹‚éƒuƒƒbƒN‚Å‚·
//‰º‚É‰½‚à‚È‚¢‚Æ—Ž‚¿‚Ü‚·
//’×‚³‚ê‚é‚ÆŽ€‚É‚Ü‚·

//‰Ÿ‚µ‚½Žž‚Ì‘¬“x‚Æ—Ž‚¿‚é‘¬“x‚ðÝ’è‚Å‚«‚Ü‚·
//—Ž‚¿‚é‘¬“x‚Í32‚Ì–ñ”‚É‚·‚é‚±‚Æ‚ð‚¨‚·‚·‚ß‚µ‚Ü‚·

push_speed=1
fall_speed=4
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(global.grav=0){

    if(y+31<player.y-12 && vspeed!=0) solid=0
    else solid=1

    if(place_meeting(x-player.hspeed,y,player) && place_free(x+sign(player.hspeed)*push_speed,y)){
        hspeed=sign(player.hspeed)*push_speed
    }else{
        hspeed=0
    }

    if(place_meeting(x,y+1,solidblock) || place_meeting(x,y+1,block)){
        vspeed=0
    }else{
        vspeed=fall_speed
    }

    if(vspeed!=0){

        if(place_meeting(x,y+vspeed,player)){
            with(player)killPlayer()

        }

    }

}else{

    if(y>player2.y+12 && vspeed!=0) solid=0
    else solid=1

    if(place_meeting(x-player2.hspeed,y,player2) && place_free(x+sign(player2.hspeed)*push_speed,y)){
        hspeed=sign(player2.hspeed)*push_speed
    }else{
        hspeed=0
    }

    if(place_meeting(x,y-1,solidblock) || place_meeting(x,y-1,block)){
        vspeed=0
    }else{
        vspeed=-fall_speed
    }

    if(vspeed!=0){

        if(place_meeting(x,y+vspeed,player2)){
            with(player2)killPlayer()

        }

    }

}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(other)instance_destroy()
