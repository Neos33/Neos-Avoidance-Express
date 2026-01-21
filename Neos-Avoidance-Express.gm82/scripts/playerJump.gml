//ƒWƒƒƒ“ƒv‚ð‰Ÿ‚µ‚½Žži‰‘¬‚ð—^‚¦‚éj


if(global.grav=0){
//’n–Ê‚ÉÚ‚µ‚Ä‚¢‚é@‚Ü‚½‚Í@“®‚­‘ä‚Éæ‚Á‚Ä‚¢‚é
if(place_meeting(x,y+1,block) || onPlatform || place_meeting(x,y+1,objwater) || place_meeting(x,y+1,solidblock) || ladderjump=true){
  vspeed = -jump;
  sound_play(sndJump);
  djump = true;

}
//‹ó’†‚É•‚‚¢‚Ä‚éó‘Ô‚ÅA‚Q’i–Ú‚ÌƒWƒƒƒ“ƒv‚ªŽc‚Á‚Ä‚¢‚éŽž
else if(djump == true || place_meeting(x,y+1,objwater2)){
  vspeed = -jump2;
  sprite_index = sprPlayerJump;
  sound_play(sndDJump);
  djump = false;

}

}else{

//’n–Ê‚ÉÚ‚µ‚Ä‚¢‚é@‚Ü‚½‚Í@“®‚­‘ä‚Éæ‚Á‚Ä‚¢‚é
if(place_meeting(x,y-1,block) || onPlatform || place_meeting(x,y-1,objwater) || place_meeting(x,y-1,solidblock) || ladderjump=true){
  vspeed = -jump;
  sound_play(sndJump);
  djump = true;

}
//‹ó’†‚É•‚‚¢‚Ä‚éó‘Ô‚ÅA‚Q’i–Ú‚ÌƒWƒƒƒ“ƒv‚ªŽc‚Á‚Ä‚¢‚éŽž
else if(djump == true || place_meeting(x,y-1,objwater2)){
  vspeed = -jump2;
  sound_play(sndDJump);
  djump = false;

}
}
