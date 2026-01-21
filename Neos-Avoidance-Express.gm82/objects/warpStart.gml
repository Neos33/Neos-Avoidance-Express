#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//“ïˆÕ“x‘I‘ð—p‚Ìƒ[ƒv

onCollide = true; //G‚ê‚é‚Æƒ[ƒv‚Å‚«‚éê‡‚ÍtrueAG‚ê‚Ä‚àƒ[ƒv‚Å‚«‚È‚¢‚È‚çfalse
/**
Room‚É”z’u‚³‚ê‚Ä‚¢‚éwarp‚ð
Ctrl‰Ÿ‚µ‚È‚ª‚ç‰EƒNƒŠƒbƒN‚ð‚µ‚Ä
uCreationCodev‚ð‘I‘ð‚µ‚Ä’†‚ð”`‚¢‚Ä‰º‚³‚¢B
‚»‚±‚ÅAÄ¶‚·‚éˆÚ“®‚·‚éæ‚ªéŒ¾‚³‚ê‚Ä‚¢‚Ü‚·B
**/
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
  if(dif == 4){
    loadGame();
  }else{
    global.difficulty = dif;
    if(file_exists("save"+string(global.savenum)) == true){
      file_delete("save"+string(global.savenum));
    }
    global.death[global.savenum] = 0;
    global.time[global.savenum] = 0;
    roomTo = global.Game_Start_Room
    event_inherited();
  }
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=501
relative=1
applies_to=self
invert=0
arg0=sprWarp
arg1=0
arg2=0
arg3=-1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_black)
draw_set_font(font12);
draw_set_halign(fa_left)
draw_text(x-16,y-16,difName);
