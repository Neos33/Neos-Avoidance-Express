#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

global.savenum = 1;//ƒZ[ƒuƒtƒ@ƒCƒ‹”Ô†
global.difficulty = 3;//ƒQ[ƒ€‚Ì“ïˆÕ“xiŠÈ’PF‚O¨‚RF“ï‚µ‚¢j
global.room_caption_def = "";

//Ž€–S”‚ÆŒo‰ßŽžŠÔ
global.death = 0;
global.time = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//numlock‚ðƒIƒt‚É‚·‚é
//SetGlobalOption‚©‚çÝ’è‚µ‚Ä‚­‚¾‚³‚¢
if(global.NumLock_Reset){
if(keyboard_get_numlock())keyboard_set_numlock(off)
}

//ƒfƒoƒbƒO—p–³“GƒL[‚Ìˆ—
//SetGlobalOption‚©‚çÝ’è‚µ‚Ä‚­‚¾‚³‚¢
if(global.Debug_Mode){

if(keyboard_check_pressed(global.Debug_Muteki_Key)){
global.Debug_Muteki_Mode = abs(global.Debug_Muteki_Mode-1)
}
if(keyboard_check_pressed(global.Debug_Baisoku_Key)){
room_speed += 50;
}else if(keyboard_check_pressed(global.Debug_Gensoku_Key)){
if(room_speed>10)room_speed -= 10;
}else if(keyboard_check_pressed(global.Debug_Tousoku_Key)){
room_speed = 50;
}

}

//QS‚Ìˆ—
if(global.Quick_Save){
if(keyboard_check_pressed(global.Quick_Save_Key)){
saveGame();
}
}

//ƒƒbƒZ[ƒW‚ªí‚É’†‰›‚É•\Ž¦‚³‚ê‚é‚æ‚¤‚É
message_position(window_get_x()+window_get_width()/2-160,window_get_y()+window_get_height()/2-32)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var a,i;

//“_–ÅŠÖ”‚Ìˆ—
for(i=0;i<=100;i+=1){

    if(global.flash_object[i]!=0){

        a=global.flash_object[i]
        global.flash_time[i]-=1

        if(global.flash_time[i]=0){

            global.flash_time[i]=global.flash_temptime[i]

            if(a.visible=1){
                a.visible=0
            }else{
                a.visible=1
                global.flash_count[i]-=1

                if(global.flash_count[i]=0){
                    global.flash_object[i]=0
                    global.flash_count[i]=0
                    global.flash_time[i]=0
                    global.flash_temptime[i]=0
                    a.flash=0
                }

            }
        }
    }
}

for(i=0;i<=100;i+=1){

    if(global.fade_object[i]!=0){

        a=global.fade_object[i]

        if(global.fade_mode[i]=0){

            a.image_alpha+=global.fade_speed[i]
            if(a.image_alpha>=1){
                global.fade_object[i]=0
                global.fade_speed[i]=0
                global.fade_mode[i]=0
                a.fadein_finish=1
            }

        }else{

            a.image_alpha-=global.fade_speed[i]
            if(a.image_alpha<=0){
                global.fade_object[i]=0
                global.fade_speed[i]=0
                global.fade_mode[i]=0
                a.fadeout_finish=1

            }

        }
    }
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//viewŠÖ˜A‚Ìˆ—
var i;

for(i=0;i<=7;i+=1){

if(global.view_hspeed2[i]!=0 || global.view_vspeed2[i]!=0){
global.xview[i]+=global.view_hspeed2[i]
global.yview[i]+=global.view_vspeed2[i]
view_xview[i]=ceil(global.xview[i])
view_yview[i]=ceil(global.yview[i])
}

if(global.view_hstretchspeed[i]!=0 || global.view_vstretchspeed[i]!=0){
global.wview[i]+=global.view_hstretchspeed[i]
global.hview[i]+=global.view_vstretchspeed[i]
view_wview[i]=ceil(global.wview[i])
view_hview[i]=ceil(global.hview[i])
}

}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//backspaceƒL[‚Å“Á’è‚Ì•”‰®‚Éƒ[ƒvo—ˆ‚Ü‚·
//SetGlobalOption‚©‚çÝ’è‚µ‚Ä‚­‚¾‚³‚¢

if(global.BackSpace_Warp){

if(keyboard_check_pressed(global.BackSpace_Warp_Key)){

roomTo=global.BackSpace_Warp_Room

if(room != rInit && room != rMenu && room != rSelectStage && room != rTitle){

   global.grav=0
    room_goto(roomTo);
    with(player){
    instance_destroy();
    }
    with(player2){
    instance_destroy();
    }
}

}

}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;

//ƒ‹[ƒ€‚Ì‚P•bŠÔ‚ÌƒXƒeƒbƒv”‚ðÝ’è
room_speed=50;
room_caption=global.Game_Title

if(global.Lite_Mode=0){
if(room != rInit && room != rMenu && room != rSelectStage && room != rTitle){
  if(global.difficulty == 0){
    room_caption += " Medium";
  }else if(global.difficulty == 1){
    room_caption += " Hard";
  }else if(global.difficulty == 2){
    room_caption += " VeryHard";
  }else if(global.difficulty == 3){
    room_caption += " Impossible";
  }
}
if(room != rInit && room != rMenu && room != rTitle){
  room_caption += "  SaveData"+string(global.savenum);
}
}

room_caption += "  [Esc]:End "
global.room_caption_def = room_caption;

if(global.music=1) { sound_stop_all() }

if(global.Mouse_Cursor_Change){
if(!instance_exists(global.Mouse_Cursor))instance_create(0,0,global.Mouse_Cursor)
}

for(i=0;i<=7;i+=1){
global.xview[i]=view_xview[i]
global.yview[i]=view_yview[i]
global.wview[i]=view_wview[i]
global.hview[i]=view_hview[i]
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
if(global.Debug_Mode=1){
draw_set_font(font24bold)
draw_set_color(c_red)
draw_set_halign(fa_left)

if(global.Debug_Muteki_Mode=0)draw_text(view_xview[0]+696,view_yview[0]+560,"Debug")
else draw_text(view_xview[0]+696,view_yview[0]+560,"Muteki")

}
*/

if(draw_music_count>0){
draw_music_count-=1
draw_set_font(font24bold)
draw_set_color(c_red)
draw_set_halign(fa_left)
if(global.music=0)draw_text(view_xview[0]+648,view_yview[0],"Music ON")
else draw_text(view_xview[0]+648,view_yview[0],"Music OFF")

}
#define KeyPress_27
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒQ[ƒ€‚ðI—¹‚·‚é
file_delete("temp");
game_end();
#define KeyPress_77
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Ctrl+M ‚ÅBGM‚Ì—L–³‚ðØ‚è‘Ö‚¦‚é‚±‚Æ‚ª‚Å‚«‚Ü‚·
//ƒZ[ƒu‚·‚ê‚Î‚»‚ÌÝ’è‚Íˆø‚«Œp‚ª‚ê‚Ü‚·
//‘Ï‹v‚È‚Ç‚Åâ‘Î‚ÉBGM‚ð—¬‚µ‚½‚¢ê‡‚ÍA
//ƒTƒ“ƒvƒ‹ƒ{ƒX‚Ì‚æ‚¤‚ÉBGM‚ðÄ¶‚·‚éƒ^ƒCƒ~ƒ“ƒO‚ð‚¸‚ç‚¹‚Î‚¨‚‹
if(keyboard_check(vk_control) == true){


draw_music_count=50
if(global.music=0){
global.music=1
sound_stop_all();
}else{
global.music=0
}


}
#define KeyPress_80
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=612
applies_to=self
invert=0
arg0=global.Pause_Message
arg1=1
arg2=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=321
invert=0
arg0=                            ƒ|[ƒY’†
*/
#define KeyPress_82
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒƒjƒ…[‰æ–Ê‚Å‚È‚¯‚ê‚ÎƒQ[ƒ€‚ðƒ[ƒhiƒŠƒXƒ^[ƒgj
if(room != rInit && room != rMenu && room != rSelectStage && room != rTitle){

//if(global.BGM_Forever=0)sound_stop_all();
loadGame();

}
#define KeyPress_113
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Ä‹N“®
file_delete("temp");
sound_stop_all();
//game_restart();
scrGameRestart()
#define KeyPress_115
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Alt+F4 - ƒQ[ƒ€‚ðŽ~‚ß‚é
if(keyboard_check(vk_alt) == true){
  file_delete("temp");
  game_end();
}
