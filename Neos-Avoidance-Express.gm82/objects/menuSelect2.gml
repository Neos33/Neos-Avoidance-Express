#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒZ[ƒuƒf[ƒ^‘I‘ð‚Ì‚â‚Â
select = 1;
str[1] = "Data1";
str[2] = "Data2";
str[3] = "Data3";
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒJ[ƒ\ƒ‹ˆÚ“®
if(global.difselect=0){
if(keyboard_check_pressed(global.leftbutton) == true){
  sound_play(sndJump);
  select -= 1;
  if(select < 1){
    select = 3;
  }
}else if(keyboard_check_pressed(global.rightbutton) == true){
  sound_play(sndJump);
  select += 1;
  if(select > 3){
    select = 1;
  }
}else if(keyboard_check_pressed(global.jumpbutton) == true){
  global.savenum = select;
  global.difselect=1
  difname=0
  if (file_exists("save" + string(select))){ difname=-1 }
}else if(keyboard_check_pressed(vk_backspace) == true){
  if(file_exists("save"+string(select)+".bk")){
    if(show_question("save"+string(select)+"‚ðƒoƒbƒNƒAƒbƒv‚©‚ç•œŒ³‚µ‚Ü‚·‚©H") == true){
      file_copy("save"+string(select)+".bk","save"+string(select))
      show_message("•œŒ³‚µ‚Ü‚µ‚½")

      file_delete("temp");
      sound_stop_all();
      game_restart();
    }
  }
}


}else{


if (keyboard_check_pressed(global.leftbutton) == true) {
    sound_play(sndJump);
    difname -= 1;
    if (difname =-1) {
    if (file_exists("save" + string(global.savenum)) = false){ difname=3 }
    }
    if (difname < -1) {
        difname = 3;
    }
} else if (keyboard_check_pressed(global.rightbutton) == true) {
    sound_play(sndJump);
    difname += 1;
    if (difname > 3) {
        difname = -1;
    }
    if (difname =-1) {
    if (file_exists("save" + string(global.savenum)) = false){ difname=0 }
    }

} else if(keyboard_check_pressed(global.shotbutton) == true) {
    global.savenum = 0
    global.difselect=0

} else if(keyboard_check_pressed(global.jumpbutton) == true) {
dif=difname
if (dif < 0) {
    loadGame();
} else {
    global.difficulty = dif;
    if(file_exists("save"+string(global.savenum)) == true){
      file_delete("save"+string(global.savenum));
    }
    global.death[global.savenum] = 0;
    global.time[global.savenum] = 0;
    room_goto(rStage01);
    event_inherited();
}

}else if(keyboard_check_pressed(vk_backspace) == true){
  if(file_exists("save"+string(global.savenum)+".bk")){
    if(show_question("save"+string(global.savenum)+"‚ðƒoƒbƒNƒAƒbƒv‚©‚ç•œŒ³‚µ‚Ü‚·‚©H") == true){
      file_copy("save"+string(global.savenum)+".bk","save"+string(global.savenum))
      show_message("•œŒ³‚µ‚Ü‚µ‚½")

      file_delete("temp");
      sound_stop_all();
      game_restart();
    }
  }
}


}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;

for(i = 1; i <= 3; i += 1){
  draw_set_color(c_black)
  draw_set_halign(fa_left)
  draw_set_font(font40);
  draw_text(x+(i-1)*239,y,str[i]);
  draw_set_font(font12);
  draw_text(x+(i-1)*239+10,y+70,"death:"+string(global.death[i]));

global.hour[i]=global.time[i] div 3600;
global.atime[i]=global.time[i] mod 3600;
global.muni[i]=global.atime[i] div 60;
global.sec[i]=global.atime[i] mod 60;

draw_text(x+(i-1)*239+10,y+90,"time:"+string(global.hour[i])+":"+string(global.muni[i])+":"+string(global.sec[i]));

draw_set_font(font12);
draw_set_halign(fa_center)

if(global.difselect=1){

 if(difname=-1) draw_text(x + (global.savenum-1)*239 + 65, y+49,"< Load game >");
    if(difname=0) draw_text(x + (global.savenum-1)*239 + 65, y+49,"< Medium >");
    if(difname=1) draw_text(x + (global.savenum-1)*239 + 65, y+49,"< Hard >");
    if(difname=2) draw_text(x + (global.savenum-1)*239 + 65, y+49,"< Very Hard >");
    if(difname=3) draw_text(x + (global.savenum-1)*239 + 65, y+49,"< Impossible >");
    }
draw_set_color(c_black)
if(file_exists("save"+string(i)) == true){

if(global.difselect=0 || (global.difselect=1 && i!=global.savenum)){
  if(global.difficulty[i]=0){draw_text(x+(i-1)*239+65,y+49,"Medium")}
  if(global.difficulty[i]=1){draw_text(x+(i-1)*239+65,y+49,"Hard")}
  if(global.difficulty[i]=2){draw_text(x+(i-1)*239+65,y+49,"Very Hard")}
  if(global.difficulty[i]=3){draw_text(x+(i-1)*239+65,y+49,"Impossible")}
}

    draw_set_font(font24bold);

  if(global.clear[i]=1){draw_text(x+(i-1)*239+65,y+215,"Clear!!")}


  //‘Î‰ž‚µ‚½ƒ{ƒX‚ª“|‚³‚ê‚½‚Æ‚«‚Éƒƒjƒ…[‚É•\Ž¦‚³‚ê‚éƒAƒCƒRƒ“‚ðŽw’è‚µ‚Ü‚·
  //bossicon1-8‚Æ‚¢‚¤–¼‘O‚ÌƒXƒvƒ‰ƒCƒg‚ð‚»‚ê‚¼‚êì‚Á‚Ä‚­‚¾‚³‚¢
  //bossitem‚Æ“¯‚¶‚Å‚à‚¿‚ª‚­‚Ä‚à‚¢‚¢‚Å‚·‚ªA
  //‰ŠúÝ’è‚Å‚ÍƒTƒ“ƒvƒ‹ƒ~ƒN‚ÌƒAƒCƒeƒ€‚ªbossicon1‚ÉŽw’è‚³‚ê‚Ä‚¢‚Ü‚·‚Ì‚Å
  //ƒ~ƒNƒAƒCƒeƒ€‚ÌƒXƒvƒ‰ƒCƒg–¼‚ð•Ï‚¦‚Ä‚¨‚¢‚Ä‚­‚¾‚³‚¢
  if(global.boss1[i]=1){draw_sprite(bossicon1,-1,x+(i-1)*239+0,y+128)}
  if(global.boss2[i]=1){draw_sprite(bossicon2,-1,x+(i-1)*239+32,y+128)}
  if(global.boss3[i]=1){draw_sprite(bossicon3,-1,x+(i-1)*239+64,y+128)}
  if(global.boss4[i]=1){draw_sprite(bossicon4,-1,x+(i-1)*239+96,y+128)}
  if(global.boss5[i]=1){draw_sprite(bossicon5,-1,x+(i-1)*239+0,y+160)}
  if(global.boss6[i]=1){draw_sprite(bossicon6,-1,x+(i-1)*239+32,y+160)}
  if(global.boss7[i]=1){draw_sprite(bossicon7,-1,x+(i-1)*239+64,y+160)}
  if(global.boss8[i]=1){draw_sprite(bossicon8,-1,x+(i-1)*239+96,y+160)}

}else{

if(global.difselect=0 || (global.difselect=1 && i!=global.savenum)){
draw_set_font(font12);
draw_set_halign(fa_center)
draw_text(x+(i-1)*239+65,y+49,"No Data")
}

}



    if(i == select){
    draw_sprite(sprCherry,-1,x+(i-1)*239+5,y+310);
    draw_sprite(sprCherry,-1,x+(i-1)*239+25,y+310);
    draw_sprite(sprCherry,-1,x+(i-1)*239+45,y+310);
    draw_sprite(sprPlayerIdle,-1,x+(i-1)*239+65,y+310);
    draw_sprite(sprCherry,-1,x+(i-1)*239+85,y+310);
    draw_sprite(sprCherry,-1,x+(i-1)*239+105,y+310);
    draw_sprite(sprCherry,-1,x+(i-1)*239+125,y+310);
  }
}
