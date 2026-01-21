#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒ‹[ƒ€‚ðˆÚ“®‚·‚éiƒ[ƒvj
//roomTo‚ÍŽqObjecti‚—arp‚Æ‚©j‚ªŽ‚Á‚Ä‚Ü‚·

  room_goto(roomTo);
  if(warpX=0 && warpY=0){
  with(player){
    instance_destroy();
  }
  with(bow){
    instance_destroy();
  }
  }else{
  player.x=warpX
  player.y=warpY
  }

/**
Room‚É”z’u‚³‚ê‚Ä‚¢‚éroomChanger‚ð
Ctrl‰Ÿ‚µ‚È‚ª‚ç‰EƒNƒŠƒbƒN‚ð‚µ‚Ä
uCreationCodev‚ð‘I‘ð‚µ‚Ä’†‚ð”`‚¢‚Ä‰º‚³‚¢B
‚»‚±‚ÅAÄ¶‚·‚éˆÚ“®‚·‚éæ‚ªéŒ¾‚³‚ê‚Ä‚¢‚Ü‚·B
**/
#define Collision_player2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//ƒ‹[ƒ€‚ðˆÚ“®‚·‚éiƒ[ƒvj
//roomTo‚ÍŽqObjecti‚—arp‚Æ‚©j‚ªŽ‚Á‚Ä‚Ü‚·

  room_goto(roomTo);
  if(warpX=0 && warpY=0){
  with(player2){
    instance_destroy();
  }
  with(bow){
    instance_destroy();
  }
  }else{
  player2.x=warpX
  player2.y=warpY
  }

/**
Room‚É”z’u‚³‚ê‚Ä‚¢‚éroomChanger‚ð
Ctrl‰Ÿ‚µ‚È‚ª‚ç‰EƒNƒŠƒbƒN‚ð‚µ‚Ä
uCreationCodev‚ð‘I‘ð‚µ‚Ä’†‚ð”`‚¢‚Ä‰º‚³‚¢B
‚»‚±‚ÅAÄ¶‚·‚éˆÚ“®‚·‚éæ‚ªéŒ¾‚³‚ê‚Ä‚¢‚Ü‚·B
**/
