#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
frozen = false; //‘€ì‚ð‹ÖŽ~‚µ‚Ä‚¢‚é‚Æ‚«‚ÍtrueA•’Ê‚Ífalse
frozen2 = false; //ˆÚ“®‚ðŠ®‘S‚É§Œä‚µ‚½‚¢‚Æ‚«‚ÉŽg‚¤
jump = 8.5; //‚P’i–Ú‚ÌƒWƒƒƒ“ƒv‚Ì‰‘¬“x
jump2 = 7; //‚Q’i–Ú‚ÌƒWƒƒƒ“ƒv‚Ì‰‘¬“x
djump = true; //‚Q’i–Ú‚ÌƒWƒƒƒ“ƒv‚ª‰Â”\‚È‚çtrueA•s‰Â”\‚È‚çfalse
maxSpeed = 3; //¶‰E‚ÌˆÚ“®‘¬“xihspeedj
gravity = 0.4; //d—Í
maxVspeed = 9; //ã‰º‚ÌÅ‘å‘¬“xivspeedj
image_speed = 0.2; //ƒAƒjƒ[ƒVƒ‡ƒ“‚Ì‘¬“x
muteki = 0; //–³“G

if(global.image_xscale=-1){image_xscale = -1;}

//ƒ[ƒ‹ƒhObject‚ª–³‚¯‚ê‚Î¶¬‚·‚é
//ƒ[ƒ‹ƒhObject‚ÍƒQ[ƒ€‚Ìƒ[ƒh‚âƒŠƒXƒ^[ƒg‚ð§Œä
if(instance_exists(world) == false){
  instance_create(0,0,world);
}

//ƒZ[ƒuƒf[ƒ^‚ª–³‚¯‚ê‚Îì¬
if(file_exists("save"+string(global.savenum)) == false){
  global.death = 0;
  global.time = 0;
  saveGame();
}

//Time‚ðŒv‘ª‚·‚é
alarm[0] = room_speed;

//ƒŠƒ{ƒ“ibowj‚ð¶¬
instance_create(x,y,bow);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Time‚ÌŒv‘ª
if(room != rInit && room != rMenu && room != rTitle && room != rSelectStage){
  global.time += 1;
}
alarm[0] = room_speed;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Ž€–S‰ñ”‚ÆŒo‰ßŽžŠÔ‚Ì•\Ž¦
room_caption = global.room_caption_def + " Death["+string(global.savenum)+"]:"+string(global.death);

global.hour=global.time div 3600;
global.atime=global.time mod 3600;
global.minu=global.atime div 60;
global.sec=global.atime mod 60;

room_caption += " Time["+string(global.savenum)+"]:"+string(global.hour)+":";
if(global.minu < 10)room_caption += "0"+string(global.minu)+":";
else room_caption += string(global.minu)+":";
if(global.sec < 10)room_caption += "0"+string(global.sec);
else room_caption += string(global.sec);


if(global.Debug_Mode=1){
if(global.Debug_Muteki_Mode=0)room_caption += "  Debug"
else room_caption += "  Muteki"
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//ƒnƒVƒS‚Ìˆ—
ladderud = 0;

    if((keyboard_check_direct(vk_up) == true || keyboard_check_direct(vk_down) == true) && ladder == false && place_meeting(x,y,objHashigo) == true){
      ladder = true;
      djump=true
    }
    if(ladder == true){
      if(place_meeting(x,y,objHashigo) == false){
        ladder = false;
      }else{
        if(keyboard_check_direct(vk_up) == true){
          y -= maxSpeed;
          gravity = 0;
          vspeed = 0;
          ladderud = 1;
        }
        if(keyboard_check_direct(vk_down) == true){
          y += maxSpeed;
          gravity = 0;
          vspeed = 0;
          ladderud = 1;
        }
       if(keyboard_check_direct(global.jumpbutton) == true){
          ladderjump=true
          ladder=false
        }
      }
    }
if(ladder=false){
gravity=0.4

}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(frozen2=0){

var L,R,h;

//¶‰E‚ÌƒL[“ü—Í‚Ìƒ`ƒFƒbƒN
L = keyboard_check_direct(global.leftbutton);
R = keyboard_check_direct(global.rightbutton);

//‰Eƒ{ƒ^ƒ“‚ð‰Ÿ‚µ‚Ä‚¢‚ê‚Î‰E
//‰Eƒ{ƒ^ƒ“‚ð‰Ÿ‚µ‚Ä‚¢‚È‚¢ó‘Ô‚Å¶ƒ{ƒ^ƒ“‚ð‰Ÿ‚µ‚Ä‚¢‚ê‚Î¶
h = R;
if(h == 0){
  h = -L;
}

//frozen‚É’l‚ª“ü‚Á‚Ä‚¢‚ê‚Îs“®‹ÖŽ~
if(frozen == true){
  h = 0;
}

//¶‰E‚ÌˆÚ“®
if(h != 0 ){
//‰æ‘œ‚Ì¶‰E‚ðŽw’èi•‰‚ª“ü‚é‚Æ‰æ‘œ‚ª¶‰E”½“]‚·‚éj
if(distance_to_object(WalljumpR) != 1 && distance_to_object(WalljumpL) > 1){

if(global.Slide_Move && keyboard_check(global.Slide_Move_Key)){
}else{
image_xscale = h;
}

}
  if((h=-1 && distance_to_object(WalljumpR) != 1) || (h=1 && distance_to_object(WalljumpL) > 1)){
  //‘–‚Á‚Ä‚¢‚éó‘Ô‚É‚·‚é
  if(!place_meeting(x,y+4,slipblock)){
  hspeed = maxSpeed*h;
  }else{
  if((h=1 && hspeed<maxSpeed) || (h=-1 && hspeed>-maxSpeed))hspeed +=(instance_place(x,y+10,slipblock).slip)*h
  }
  //‘–‚Á‚Ä‚¢‚é‰æ‘œ‚É•ÏX
  sprite_index = sprPlayerRunning;
  image_speed = 0.5;
  }
}else{
  if(!place_meeting(x,y+4,slipblock)){
  //’¼—§ó‘Ô‚É‚·‚é
  hspeed = 0;
  }else{
  if(hspeed!=0)hspeed-=(instance_place(x,y+10,slipblock).slip)*sign(hspeed)
  }
  //’¼—§‰æ‘œ‚É•ÏX
  sprite_index = sprPlayerIdle;
  image_speed = 0.2;
}

//“®‚­‘ä‚Éæ‚Á‚Ä‚¢‚È‚¢Žž
if (onPlatform == false){
  //ƒWƒƒƒ“ƒvE—Ž‰º‰æ‘œ‚É•ÏX
  if(vspeed < -0.05){
    sprite_index = sprPlayerJump;
  }
  if(vspeed > 0.05){
    sprite_index = sprPlayerFall;
  }
}
//“®‚­‘ä‚Éæ‚Á‚Ä‚éó‘Ô‚©‚ç‰ðœ‚³‚ê‚½uŠÔ
else{
  if(place_meeting(x,y+4,platform) == false){
    onPlatform = 0;
  }
}

//vspeed‚ªÅ‘å’l‚ð’´‚¦‚½‚çAÅ‘å’l‚ÉŒÅ’è
if(abs(vspeed) > maxVspeed){
  vspeed = sign(vspeed)*maxVspeed;
}

//frozen‚É’l‚ª“ü‚Á‚Ä‚¢‚È‚¢is“®‰Â”\j
if(frozen == false){

    //ƒvƒŒƒCƒ„[‚ÌUŒ‚
    if(keyboard_check_pressed(global.shotbutton)){
      playerShoot();
    }
    //ƒWƒƒƒ“ƒvi‰Ÿ‚µ‚½j
    if(keyboard_check_pressed(global.jumpbutton)){
      playerJump();
    }
    //ƒWƒƒƒ“ƒvi—£‚µ‚½j
    if(keyboard_check_released(global.jumpbutton)){
      playerVJump();
    }

}


//ƒhƒbƒg’²®ƒL[
//ƒfƒtƒHƒ‹ƒg‚Å‚ÍƒIƒt‚Å‚·
//SetGlobalOption‚ÅƒIƒ“‚É‚µ‚Ä‚­‚¾‚³‚¢
if(global.Dot_Adjust){
if(place_meeting(x,y+1,block) || place_meeting(x,y+1,solidblock)){
if(keyboard_check_pressed(global.Dot_Adjust_Lkey)) hspeed-=1;
if(keyboard_check_pressed(global.Dot_Adjust_Rkey)) hspeed+=1;
}
}

}else{

}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//•ÇƒWƒƒƒ“ƒv‚Ìˆ—
if distance_to_object(WalljumpL) < 2 && place_free(x,y+1) {

vspeed=2;
maxFallSpeed=2;
sprite_index=sprPlayerSliding;
image_xscale=1
image_speed=1/2;


    if keyboard_check_pressed(global.rightbutton) && keyboard_check(global.jumpbutton) {
    sprite_index=sprPlayerJump;
    maxFallSpeed=8
    vspeed = -9;
    hspeed = 15;
    sound_play(snd_wallum);

    }

    if keyboard_check_pressed(global.rightbutton) && !keyboard_check(global.jumpbutton) {
    hspeed=3
    maxFallSpeed=8
    sprite_index=sprPlayerFall;
    }

}

if distance_to_object(WalljumpL) > 1 && place_free(x,y+1) {
maxFallSpeed=8
}


if distance_to_object(WalljumpR) = 1 && place_free(x,y+1) {

vspeed=2;
maxFallSpeed=2;
sprite_index=sprPlayerSliding;
image_xscale=-1
image_speed=1/2;

    if keyboard_check_pressed(global.leftbutton) && keyboard_check(global.jumpbutton) {
    sprite_index=sprPlayerJump;
    maxFallSpeed=8
    vspeed = -9;
    hspeed = -15;
    sound_play(snd_wallum);
    }

    if keyboard_check_pressed(global.leftbutton) && !keyboard_check(global.jumpbutton) {
    hspeed=-3
    maxFallSpeed=8
    sprite_index=sprPlayerFall;
    }

}

if distance_to_object(WalljumpR) > 1 && place_free(x,y+1) {
maxFallSpeed=8
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(global.grav=1){
global.image_xscale=image_xscale
instance_create(x,y-4,player2)
instance_destroy()
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ladderjump=false

if(ladder=1){
sprite_index=sprPlayerBack;
image_speed=0.1
}
if(ladderud=1){
sprite_index=sprPlayerLadderUpDown;
image_speed=0.2
}
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//•Ç‚Æ‚ÌÕ“Ë”»’è

//‘OŒã‚É•Ç‚ª‚ ‚éŽž
if(place_free(x+hspeed,y) == false){
  if(hspeed <= 0){//¶
    move_contact_solid(180,abs(hspeed));
  }
  if(hspeed > 0){//‰E
    move_contact_solid(0,abs(hspeed));
  }
  hspeed = 0;
}

//ã‰º‚É•Ç‚ª‚ ‚éŽž
if(place_free(x,y+vspeed) == false){
  if(vspeed <= 0){//ã
    move_contact_solid(90,abs(vspeed));
  }
  if(vspeed > 0){//‰º
    move_contact_solid(270,abs(vspeed));
    djump=1;
  }
  vspeed = 0;

}

//ŽÎ‚ß‚ÌˆÊ’u‚É•Ç‚ª‚ ‚éŽž
if (place_free(x+hspeed,y+vspeed) == false){
  hspeed=0;
}
#define Collision_playerKiller
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Ž€–SiKillPlayer‚ðŽÀsj
killPlayer();
#define Collision_platform
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//“®‚­‘ä‚Æ‚ÌÕ“Ë”»’è
//“®‚­‘ä‚Ìã‚É‹‚½‚çA“®‚­‘ä‚É‚­‚Á‚Â‚­‚Á‚Û‚¢Š´‚¶
if(y-vspeed/2 <= other.y){
  if(other.vspeed >= 0){
    y = other.y-9;
    vspeed = other.vspeed;
    djump = true;
  }
  onPlatform = 1;
  djump = true;
}
#define Collision_solidblock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//•Ç‚Æ‚ÌÕ“Ë”»’è

//‘OŒã‚É•Ç‚ª‚ ‚éŽž
if(place_free(x+hspeed,y) == false){
  if(hspeed <= 0){//¶
    move_contact_solid(180,abs(hspeed));
  }
  if(hspeed > 0){//‰E
    move_contact_solid(0,abs(hspeed));
  }
  hspeed = 0;
}

//ã‰º‚É•Ç‚ª‚ ‚éŽž
if(place_free(x,y+vspeed) == false){
  if(vspeed <= 0){//ã
    move_contact_solid(90,abs(vspeed));
  }
  if(vspeed > 0){//‰º
    move_contact_solid(270,abs(vspeed));
    djump=1;
  }
  vspeed = 0;
  gravity=0
}

//ŽÎ‚ß‚ÌˆÊ’u‚É•Ç‚ª‚ ‚éŽž
if (place_free(x+hspeed,y+vspeed) == false){
  hspeed=0;
}
#define Other_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//‰æ–Ê‚ÌŠO‚Éo‚½‚Æ‚«‚Ì”»’è
var changeRoom,tempwarp;

//ƒ‹[ƒ€‚ÌŠO‚É‹‚é‚©‚Ç‚¤‚©‚Ìƒ`ƒFƒbƒN
changeRoom = outsideRoom();


if(changeRoom == true){
  //‹ß‚­‚ÉroomChanger‚ª—L‚ê‚ÎA‚»‚ÌroomTo‚Ìƒ‹[ƒ€‚ÉˆÚ“®B–³‚¯‚ê‚ÎŽ€–S
  if(place_meeting(x,y,outsideroomChanger) == false){
  if(global.looproom=0) killPlayer();

  }else{
    tempwarp=instance_place(x,y,outsideroomChanger)
    with(tempwarp){
      room_goto(roomTo);
        if(warpX=0 && warpY=0){
            with(player)instance_destroy();
            with(bow)instance_destroy();
        }else{
            player.x=warpX
            player.y=warpY
        }
    }
  }
}
  //À•W‡‚í‚¹iƒ‹[ƒ€‚ÌƒTƒCƒY‚ª“¯‚¶‚Å‚È‚¢‚Æ‹““®‚ª•Ï‚É‚È‚è‚Ü‚·j
  if(x < 0){
    x = room_width-16;
    y -= vspeed;
    changeRoom = true;
  }
  else if(x > room_width){
    x = 16;
    y -= vspeed;
    changeRoom = true;
  }
  else if(y < 0){
    y = room_height-16;
    x = xprevious;
    changeRoom = true;
  }
  else if(y > room_height){
    y = 16;
    x = xprevious;
    changeRoom = true;
  }
#define KeyPress_81
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Ž©ŽEiKillPlayer‚ðŽÀsj
killPlayer();
